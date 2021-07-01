//
//  CityPostsViw.swift
//  RandeVu
//
//  Created by Chika Ohaya on 6/10/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//

import SwiftUI

struct CityPostsViw: View {
    @Environment(\.presentationMode)
    var presentation
    var image = UIImage()
    var postimage = PostPhotoView()
    @State private var willMoveToNextScreen = false
    @State  var showingPopUp = false
    @State private var presentingSheet = false
    var body: some View {
        ZStack {
           
            
           // Color.black
           //     .ignoresSafeArea()
            Image(uiImage: postimage.image)
          
                 .resizable()
                     .aspectRatio(contentMode: .fill)
                     .frame(width: 435, height: 872)
                     .clipShape(RoundedRectangle(cornerRadius: 30))
                    .ignoresSafeArea()
        VStack {
            HStack(spacing: 320){
                Text("Atlanta").font(.custom("Archivo Black Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                Button(action: { self.showingPopUp = true}) {
               Image("dotdotdot")
                .resizable()
                .frame(width:25, height: 5)
                }
              
            }
            VStack(spacing:20){
            Image("clap")
            Image("heart")
                .resizable()
                .frame(width:30,height: 26)
            Image("flame")
                HStack(spacing:20){
            ZStack {
                Image("michael-jordan")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30)
                .clipShape(Circle())

                Circle()
                .strokeBorder(LinearGradient(
                        gradient: Gradient(stops: [
                    .init(color: Color(#colorLiteral(red: 0.13333334028720856, green: 0.7568627595901489, blue: 0.7647058963775635, alpha: 1)), location: 0),
                    .init(color: Color(#colorLiteral(red: 0.9921568632125854, green: 0.7333335280418396, blue: 0.1764705777168274, alpha: 1)), location: 1)]),
                        startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                        endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 3)
            }
            .frame(width: 30, height: 30)
                    Text("@username").font(.custom("Arimo Regular", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .padding(.trailing,-100)
                }.padding(.leading,22)
        }.padding(.top,580)
            .padding(.trailing,400)
            CustomTextField()
                .padding(.trailing,66)
    }
            
        }
        
    }
    struct CustomTextFieldStyle: TextFieldStyle {
        func _body(configuration: TextField<_Label>) -> some View {
            HStack(spacing:160) {
            ZStack{
               
            configuration
                .background(Color(#colorLiteral(red: 0.9529411792755127, green: 0.9215686321258545, blue: 0.9058823585510254, alpha: 0)))
                .cornerRadius(23)
                .overlay(RoundedRectangle(cornerRadius: 23).strokeBorder(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 2))
                .frame(width: 362, height: 58.0)
                
                Button(action: { }) {
               Image("mailarrow")
                .resizable()
                .frame(width:25, height: 25)
                .padding(.leading,300)
                }
        }
    }
        }
    }
    struct CustomTextField: View {
        @State private var text: String = ""

        var body: some View {
            TextField("Message Gabriela ...", text: $text)
                .font(.custom("Arimo Regular", size: 41)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .textFieldStyle(CustomTextFieldStyle())
                .padding(.horizontal, 20)
                .padding(.vertical, 16)
                
        }
        
    }
}
//    struct CustomTextFieldStyle: TextFieldStyle {
//        func _body(configuration: TextField<_Label>) -> some View {
//            configuration
//            //Message Frame
//            ZStack {
//            HStack(spacing: 130) {
//
//            }
//            .padding(.horizontal, 60)
//            .padding(.vertical, 16)
//            .background(Color(#colorLiteral(red: 0.9529411792755127, green: 0.9215686321258545, blue: 0.9058823585510254, alpha: 0)))
//            .cornerRadius(23)
//            .overlay(RoundedRectangle(cornerRadius: 23).strokeBorder(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 2))
//            .frame(width: 342, height: 41)
//Image("mailarrow")
//
//        }
//    }
//    }
//    struct CustomTextField: View {
//        @State private var text: String = ""
//
//        var body: some View {
//            TextField("Test", text: $text)
//                .textFieldStyle(CustomTextFieldStyle())
//
//
//        }
//    }
//}


struct CityPostsViw_Previews: PreviewProvider {
    static var previews: some View {
        CityPostsViw()
    }
}
