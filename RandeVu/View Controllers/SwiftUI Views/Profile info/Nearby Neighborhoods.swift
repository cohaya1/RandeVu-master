//
//  Nearby Neighborhoods.swift
//  RandeVu
//
//  Created by Chika Ohaya on 5/5/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//

import SwiftUI

struct Nearby_Neighborhoods: View {
    @Environment(\.presentationMode) var prestationMode
    var body: some View {
        NavigationView {
        VStack {
            HStack() {
                NavigationLink(destination:RandeVuHomepage()) {
                    Image("arrow left")
                        .resizable()
                        .scaledToFit()
                        .frame(width:12,height: 19.24)
                }
                
            Text("Nearby Neighborhoods").font(.custom("Futura Bold", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.19, blue: 0.15, alpha: 1))).multilineTextAlignment(.center)
                .padding(.leading,30)
                
        }
                .padding(.trailing,100)
    
            if #available(iOS 14.0, *) {
                let twocolumns = [GridItem(spacing: -5),GridItem(spacing:-65)]
                
                ScrollView {
                   
                LazyVGrid(columns:twocolumns) {
                    
                    ForEach(1..<10) {
                        item in
                        ZStack {
                        Image("michael-jordan")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 192.5, height: 299.5)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        .frame(width: 192.5, height: 299.5)
                            .padding()
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(
                                    gradient: Gradient(stops: [
                                .init(color: Color(#colorLiteral(red: 0.30588236451148987, green: 0.3450980484485626, blue: 0.4313725531101227, alpha: 0.5)), location: 0),
                                .init(color: Color(#colorLiteral(red: 0.30588236451148987, green: 0.3450980484485626, blue: 0.4313725531101227, alpha: 1)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)))
                        .frame(width: 192.5, height: 90)
                            
                            .padding(.top,220)
                            VStack(spacing: -10) {
                        //Little Five Points
                        Text("Little Five Points").font(.custom("Futura Bold", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .padding(.top,230)
                           
                                    HStack(spacing: 7) {
                        //0.1mil
                        
                        Text("0.1mil").font(.custom("Arimo Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .padding(.bottom,-70)
                            
                        Image("arrowup")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .trailing)
                            .padding(.top,23)
                            
                            }
                                    .padding(.leading,77)
                    }
                }
            }
            }
            }
    }
    
}
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        }
        .navigationBarHidden(true)
    }
}

struct Nearby_Neighborhoods_Previews: PreviewProvider {
    static var previews: some View {
        Nearby_Neighborhoods()
    }
}
