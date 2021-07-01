//
//  OnboardingView.swift
//  RandeVu
//
//  Created by Chika Ohaya on 6/22/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentTab = 0

    var body: some View {
        TabView(selection: $currentTab,
                content:  {
                    OnbView1()
                        .tag(0)
                        .ignoresSafeArea()
                    OnbView2()
                        .tag(1)
                        
                })
            .padding(.all,-4)
            .ignoresSafeArea(.all)
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .ignoresSafeArea(.all)
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
