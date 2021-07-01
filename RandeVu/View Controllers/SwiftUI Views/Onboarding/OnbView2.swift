//
//  OnbView2.swift
//  RandeVu
//
//  Created by Chika Ohaya on 6/22/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//

import SwiftUI

struct OnbView2: View {
    var body: some View {
        VStack(spacing:25){
        Image("Discoverneaby")
            .resizable()
            .frame(width: 395, height: 542, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        Image("Discover Nearby")
            
        Image("Meet beautiful people Explore local places Re-imagine the social circle")
        }.padding(.bottom,100)
        .ignoresSafeArea()
    }
}

struct OnbView2_Previews: PreviewProvider {
    static var previews: some View {
        OnbView2()
    }
}
