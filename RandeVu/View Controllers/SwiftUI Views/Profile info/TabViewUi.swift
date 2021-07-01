//
//  TabViewUi.swift
//  RandeVu
//
//  Created by Chika Ohaya on 5/8/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//

import SwiftUI

struct TabViewUi: View {
    var body: some View {
        TabView{
            RandeVuHomepage().tabItem({
                Image("hometab")
                    .resizable()
                    .frame(width: 50, height:
                        50 )
            }).tag(0)
            CameraView().tabItem ({ Image("plustab") }).tag(1)
            Text("Chat View").tabItem ({ Image("chattab") }).tag(1)
            
        }
    }
}

struct TabViewUi_Previews: PreviewProvider {
    static var previews: some View {
        TabViewUi()
    }
}
