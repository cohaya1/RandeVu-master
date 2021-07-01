//
//  PostPhotoView.swift
//  RandeVu
//
//  Created by Chika Ohaya on 5/24/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//

import SwiftUI

struct PostPhotoView: View {
    @Environment(\.presentationMode)
    var presentation
    var image = UIImage()
    @StateObject var model = CameraModel()
    @State private var willMoveToNextScreen = false
    @State  var showingPopUp = false
    @State private var presentingSheet = false
    
    var body: some View {
        NavigationView {
        ZStack {
           
            
            
                
                Image(uiImage: image)
                 
                 .resizable()
                     .aspectRatio(contentMode: .fill)
                     .frame(width: 435, height: 872)
                     .clipShape(RoundedRectangle(cornerRadius: 30))
                    .ignoresSafeArea()
            VStack {
           
            
        HStack{
           
            NavigationLink(destination:CameraView ()){
            Image("orangearrow")
                .resizable()
                .interpolation(.high)
                .frame(width:12,height: 19.24)
                .padding()
            }
        
            Spacer()
                
            NavigationLink(destination:ProfileView()){
            Text("Post").font(.custom("Futura Bold", size: 15)).foregroundColor(Color(#colorLiteral(red: 0.99, green: 0.56, blue: 0.31, alpha: 1)))
                .padding()
            
            }
        }
        
       // }
        
        .padding(.bottom,700)
        
                if $showingPopUp.wrappedValue{
                    
                    ZStack {
                        Color.black.opacity(0.4)
                            .ignoresSafeArea()
                            .frame(width: 500, height: 1800)
                            .padding()
                        ZStack {
                           
                            RoundedRectangle(cornerRadius: 30)
                            .fill(LinearGradient(
                                    gradient: Gradient(stops: [
                                .init(color: Color(#colorLiteral(red: 0.2078431397676468, green: 0.22745098173618317, blue: 0.250980406999588, alpha: 1)), location: 0),
                                .init(color: Color(#colorLiteral(red: 0.0855034738779068, green: 0.08923611044883728, blue: 0.1041666716337204, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.4999999533681315, y: -0.5647058680890755),
                                    endPoint: UnitPoint(x: 0.4999999533681311, y: 1)))

                            RoundedRectangle(cornerRadius: 30)
                            .strokeBorder(LinearGradient(
                                    gradient: Gradient(stops: [
                                .init(color: Color(#colorLiteral(red: 0.25882354378700256, green: 0.27843138575553894, blue: 0.3137255012989044, alpha: 1)), location: 0),
                                .init(color: Color(#colorLiteral(red: 0.125490203499794, green: 0.13725490868091583, blue: 0.14901961386203766, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 2)
                            //Block user
                           

                            VStack {
                                HStack {
                                    Button(action: {
                                        self.showingPopUp = false
                                    }) {
                                        Image("exit")
                                            .padding(.trailing,100)
                                    }
                            Text("Profile Pic").font(.custom("Archivo Black Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .padding(.trailing,107)
                                    NavigationLink(destination: ProfileView(image:model.photo?.image ?? UIImage()),  isActive: $willMoveToNextScreen) { EmptyView() }
                                
                                        .onTapGesture {
                                            willMoveToNextScreen = true
                                           
                                        }
                                }
                                Spacer()
                            Image("line")
                                .resizable()
                                .frame(width: 300, height:1)
                                Spacer()
                            //Report user
                            Text("City Post").font(.custom("Archivo Black Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .padding()
                                NavigationLink(destination: CityPostsViw(image:model.photo?.image ?? UIImage()), isActive: $willMoveToNextScreen) { EmptyView() }
                            
                                    .onTapGesture {
                                        willMoveToNextScreen = true
                                       
                                    }
                            }
                            }
                        
                        .compositingGroup()
                        .frame(width: 355, height: 149)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:-6)
                    }
                    .padding(.bottom,800)
                    }
                        
                        
                        
                }
                }
        .navigationBarHidden(true)
        .ignoresSafeArea()
        }
        
        
        }
}

       
//       Image(uiImage: image)
//
//        .resizable()
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 435, height: 872)
//            .clipShape(RoundedRectangle(cornerRadius: 30))
       //.frame(width: 375, height: 812)





struct PostPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PostPhotoView()
    }
}
