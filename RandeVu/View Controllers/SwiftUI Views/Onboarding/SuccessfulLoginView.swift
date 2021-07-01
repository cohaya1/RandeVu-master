//
//  SuccessfulLoginView.swift
//  RandeVu
//
//  Created by Chika Ohaya on 6/30/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//

import SwiftUI

struct SuccessfulLoginView: View {
    var body: some View {
        VStack(spacing:20){
            Image("checkmark")
                .resizable()
                .frame(width:110,height: 110)
            Image("Congrats")
                .resizable()
                .frame(width: 337, height: 96, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Image("Continue")
                .resizable()
                .frame(width:150,height:40)
                .padding(.top,40)
            
        }
    }
}

struct SuccessfulLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessfulLoginView()
    }
}
