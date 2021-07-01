//
//  ProfileView.swift
//  RandeVu
//
//  Created by Chika Ohaya on 4/15/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//
import Combine
import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var prestationMode
    var image = UIImage()
    
    var body: some View {
        
        NavigationView{
        VStack {
        HStack(spacing: 85) {
            Button(action: {}) {
                Image("ProfileSettings")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(maxWidth: 80)
            }
            
                Image("Profile")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(maxWidth: 100)
            NavigationLink(destination: RandeVuHomepage() ) {
                Image("Arrowtonext")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(maxWidth: 45)
                
            }
                
            }
            Image(uiImage:image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 172.5, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 30))
            .frame(width: 172.5, height: 200)
                .padding(.leading)
                
            .shadow(color: Color(#colorLiteral(red: 0.2078431397676468, green: 0.1882352977991104, blue: 0.14901961386203766, alpha: 0.25)), radius:25, x:4, y:4)
            Text("Michael Jordan ").font(.custom("Futura Bold", size: 24)).foregroundColor(Color(#colorLiteral(red: 0.16, green: 0.43, blue: 0.4, alpha: 1))).multilineTextAlignment(.center)
                .padding(.leading,10)
           
            
            Spacer(minLength: 100)
            Text("Recent ").font(.custom("Rubik Medium", size: 13)).foregroundColor(Color(#colorLiteral(red: 0.16, green: 0.43, blue: 0.4, alpha: 1)))
                .padding(.trailing, 345)
           
            List {
                ScrollView(.horizontal) {
                    HStack{
                        ForEach(1..<10) { _ in
                            Image("michael-jordan")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 137, height: 222.6)
                                .clipShape(RoundedRectangle(cornerRadius: 20.54))
                            .frame(width: 137, height: 222.6)
                        }
                    }
                    
                }
                
            }
            //view all
            Text("view all").font(.custom("Rubik Medium", size: 13)).foregroundColor(Color(#colorLiteral(red: 0.16, green: 0.43, blue: 0.4, alpha: 1)))
                .padding(.leading, 345)
            Spacer(minLength: 20)
        }
        .navigationBarHidden(true)
       
    }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
