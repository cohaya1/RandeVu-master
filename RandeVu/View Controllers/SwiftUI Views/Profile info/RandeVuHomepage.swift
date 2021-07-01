//
//  RandeVuHomepage.swift
//  RandeVu
//
//  Created by Chika Ohaya on 5/1/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//

import SwiftUI

struct RandeVuHomepage: View {
    @State private var isHidden = true
   
    var body: some View {
        
        NavigationView {
       
            
        if #available(iOS 14.0, *) {
            
            VStack {
                ZStack{
                   Image("Exclude")
                       .resizable()
                    .frame(width:435,height: 160)
                    .padding(.top,-85)
                
                HStack(spacing: -15) {
                   
                    ZStack {
                        //  HStack(spacing: 0) {
                        NavigationLink(destination: ProfileView()) {
                        Image("90")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        }
                    
                        Circle()
                            .strokeBorder(Color(#colorLiteral(red: 0.9921568632125854, green: 0.5568627715110779, blue: 0.30588236451148987, alpha: 1)), lineWidth: 2)
                            .frame(width: 60, height: 60)
                    }
                    NavigationLink(destination:Nearby_Neighborhoods()) {
                    SearchBar()
                        .padding(.all)
                    }
                    ZStack {
                        Image("i")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        
                        Circle()
                            .strokeBorder(Color(#colorLiteral(red: 0.2078431397676468, green: 0.1882352977991104, blue: 0.14901961386203766, alpha: 1)), lineWidth: 2)
                            .frame(width: 60, height: 60)
                    }
                    
                    
                }
                }
                if #available(iOS 14.0, *) {
                   
                    let twocolumns = [GridItem(spacing: -5),GridItem(spacing:-65)]
                    ScrollView {
                        NavigationLink(destination:ViewersView()){
                    LazyVGrid(columns:twocolumns) {
                        ForEach(1..<10) {
                            item in
                            Image("michael-jordan")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 192.5, height: 299.5)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                            .frame(width: 192.5, height: 299.5)
                        }
                        }
                        
                    }
                }
                    ScrollView(.horizontal) {
                       
                        NavigationLink(destination:NeighborhoodInfo()){
                            
                        HStack(spacing: 22) {
                            ForEach(1..<10) {
                                _ in
                                VStack(spacing: 2) {
                                ZStack {
                                    
                                    Image("i")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 55, height: 55)
                                        .clipShape(Circle())

                                        Circle()
                                        .strokeBorder(LinearGradient(
                                                gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 0.13333334028720856, green: 0.7568627595901489, blue: 0.7647058963775635, alpha: 1)), location: 0),
                                            .init(color: Color(#colorLiteral(red: 0.9921568632125854, green: 0.7333335280418396, blue: 0.1764705777168274, alpha: 1)), location: 1)]),
                                                startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                                endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 2)
                                    }
                                    .frame(width: 55, height: 55)
                            
                                Text("The Local").font(.custom("Arimo Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.16, green: 0.43, blue: 0.4, alpha: 1)))
                                }
                            }
                        }
                        }
                    }
                }
                // .padding(.trailing)
                //   .frame(width: 40, height: 40)
            }
            .navigationBarHidden(isHidden)
            
        }
        
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(isHidden)
    }
        
}
    

struct RandeVuHomepage_Previews: PreviewProvider {
    static var previews: some View {
        RandeVuHomepage()
    }
}
