//
//  PushnotiScreen.swift
//  RandeVu
//
//  Created by Chika Ohaya on 6/30/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//

import SwiftUI

struct PushnotiScreen: View {
    var body: some View {
        VStack(spacing:15){
            Image("bellthing")
                .resizable()
                .frame(width:110,height: 83.6)
            Image("Push desc")
                .resizable()
                .frame(width: 334, height: 65.4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Image("Enable")
                .resizable()
                .frame(width:150,height:40)
                .padding(.top,40)
            Text("Later").font(.custom("Bold", size: 13)).foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.19, blue: 0.15, alpha: 1))).multilineTextAlignment(.center)
                .padding(.top)
                .frame(width:36,height: 15)
        }
    }
}
struct PushnotiScreen_Previews: PreviewProvider {
    static var previews: some View {
        PushnotiScreen()
    }
}
