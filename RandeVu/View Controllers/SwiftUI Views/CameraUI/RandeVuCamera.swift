//
//  RandeVuCamera.swift
//  RandeVu
//
//  Created by Chika Ohaya on 5/13/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//

import SwiftUI
import Combine
import AVFoundation

final class CameraModel: ObservableObject {
    private let service = CameraService()
   
    @Published var photo: Photo?
    
    @Published var showAlertError = false
    
    @Published var isFlashOn = false
    
    @Published var willCapturePhoto = false
    
    var alertError: AlertError!
    
    var session: AVCaptureSession
    
    private var subscriptions = Set<AnyCancellable>()
    
    init() {
        self.session = service.session
        
        service.$photo.sink { [weak self] (photo) in
            guard let pic = photo else { return }
            self?.photo = pic
        }
        .store(in: &self.subscriptions)
        
        service.$shouldShowAlertView.sink { [weak self] (val) in
            self?.alertError = self?.service.alertError
            self?.showAlertError = val
        }
        .store(in: &self.subscriptions)
        
        service.$flashMode.sink { [weak self] (mode) in
            self?.isFlashOn = mode == .on
        }
        .store(in: &self.subscriptions)
        
        service.$willCapturePhoto.sink { [weak self] (val) in
            self?.willCapturePhoto = val
        }
        .store(in: &self.subscriptions)
    }
    
    func configure() {
        service.checkForPermissions()
        service.configure()
    }
    
    func capturePhoto() {
        service.capturePhoto()
    }
    
    func flipCamera() {
        service.changeCamera()
    }
    
    func zoom(with factor: CGFloat) {
        service.set(zoom: factor)
    }
    
    func switchFlash() {
        service.flashMode = service.flashMode == .on ? .off : .on
    }
}

struct CameraView: View {
    @State private var presentingSheet = false
    @StateObject var model = CameraModel()
    @State private var willMoveToNextScreen = false
    @State var currentZoomFactor: CGFloat = 1.0
    @State private var showDetailedImage = false
    var captureButton: some View {
        
        Button(action: {
            model.capturePhoto()
        }, label: {
            
            ZStack {
            Circle()
                .fill(Color(#colorLiteral(red: 0.9921568632125854, green: 0.5568627715110779, blue: 0.30588236451148987, alpha: 0.800000011920929)))
            .frame(width: 70, height: 70)
           
            //Ellipse 108
            ZStack {
                Circle()
                .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.4274509847164154, blue: 0.3960784375667572, alpha: 1)))

                Circle()
                .strokeBorder(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 3)
            }
            .frame(width: 43.8, height: 43.8)
            }
    })
        }
        
    var capturedPhotoThumbnail: some View {
        
        Group {
            if model.photo != nil {
               
                Image(uiImage: model.photo!.image!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    .animation(.spring())
                }
             else {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 60, height: 60, alignment: .center)
                    .foregroundColor(.black)
            }
        }
    }
    
    var flipCameraButton: some View {
        Button(action: {
            model.flipCamera()
        }, label: {
            Circle()
                .foregroundColor(Color.gray.opacity(0.2))
                .frame(width: 45, height: 45, alignment: .center)
                .overlay(
                    Image( "camera")
                        .resizable()
                                       .frame(width:30,height: 22.5)
                        .foregroundColor(.white))
                
        })
    }
    var captureImage: some View {
        ZStack {
        Image("capture")
            .resizable()
            .frame(width:80,height: 80, alignment: .center)
            .padding(.top,100)
        }
    }
    var body: some View {
       
        GeometryReader { reader in
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    
                    CameraPreview(session: model.session)
                        .gesture(
                            DragGesture().onChanged({ (val) in
                                //  Only accept vertical drag
                                if abs(val.translation.height) > abs(val.translation.width) {
                                    //  Get the percentage of vertical screen space covered by drag
                                    let percentage: CGFloat = -(val.translation.height / reader.size.height)
                                    //  Calculate new zoom factor
                                    let calc = currentZoomFactor + percentage
                                    //  Limit zoom factor to a maximum of 5x and a minimum of 1x
                                    let zoomFactor: CGFloat = min(max(calc, 1), 5)
                                    //  Store the newly calculated zoom factor
                                    currentZoomFactor = zoomFactor
                                    //  Sets the zoom factor to the capture device session
                                    model.zoom(with: zoomFactor)
                                }
                            })
                        )
                        .onAppear {
                            model.configure()
                        }
                        .alert(isPresented: $model.showAlertError, content: {
                            Alert(title: Text(model.alertError.title), message: Text(model.alertError.message), dismissButton: .default(Text(model.alertError.primaryButtonTitle), action: {
                                model.alertError.primaryAction?()
                            }))
                        })
                        .overlay(
                            Group {
                                if model.willCapturePhoto {
                                    Color.black
                                }
                            }
                        )
                        .animation(.easeInOut)
                    
                    captureImage
                        .padding(.top,-400)
                        .padding(.leading,20)
                    VStack {
                        ZStack{
                        HStack {
                              Image("exit")
                                  .resizable()
                                  .frame(width: 22, height: 22)
                                  .padding(.trailing,340)
                                  .padding(.top,-670)
                      
                          }
                        }
                    capturedPhotoThumbnail
                      //  .navigate(to: PostPhotoView(image: model.photo?.image ?? UIImage()), when: $willMoveToNextScreen)
                        .sheet(isPresented: $presentingSheet) {
                            PostPhotoView(image: model.photo?.image ?? UIImage())
                        }
                        .onTapGesture {
                            willMoveToNextScreen = true
                            self.presentingSheet = true
                        }
                        .padding(.leading,23)
                    }
                    HStack {
//                        NavigationLink(destination: PostPhotoView(image:model.photo?.image ?? UIImage()), isActive: $willMoveToNextScreen) { EmptyView() }
                        flipCameraButton
                        Spacer()
                        
                        captureButton
                        
                        Spacer()
                        
                        
                        Button(action: {
                            model.switchFlash()
                        }, label: {
                            Image(systemName: model.isFlashOn ? "bolt.fill" : "bolt.slash.fill")
                                .font(.system(size: 20, weight: .medium, design: .default))
                           
                        })
                        .accentColor(model.isFlashOn ? .yellow : .white)
                    }
                    .padding(.horizontal, 20)
                }
            }
        }
    }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        CameraView()
        }
    }
}
}
