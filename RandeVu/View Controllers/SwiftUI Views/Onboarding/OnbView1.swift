//
//  OnbView1.swift
//  RandeVu
//
//  Created by Chika Ohaya on 6/22/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//

import SwiftUI

struct OnbView1: View {
    var body: some View {
        ZStack {
            Image("onbackground")
                .resizable()
                .ignoresSafeArea()
                .frame(width: 435, height: 862, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            VStack(spacing:18) {
                Image("RandevuLOGO")
                    .resizable()
                    .frame(width: 181, height: 64, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Image("App designed to change up the conversation")
                    .resizable()
                    .frame(width: 262, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            .padding(.bottom,500)
        }
        
    }
}

struct OnbView1_Previews: PreviewProvider {
    static var previews: some View {
        OnbView1()
    }
}
