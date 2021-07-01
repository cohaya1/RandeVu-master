////
////  LiveFeedView.swift
////  RandeVu
////
////  Created by Chika Ohaya on 6/11/21.
////  Copyright © 2021 Ohaya. All rights reserved.
////
//
//import SwiftUI
//import AVKit
//struct LiveFeedView: View {
//    @State var currentReel = ""
//    @State var reels = MediaFileJSON.map{ item -> Reel in
//        let url = Bundle.main.path(forResource:item.url,ofType: "mp4") ?? ""
//        let player = AVPlayer(url: URL(fileURLWithPath: url))
//        return Reel( player: player, mediaFile: item)
//    }
//    var body: some View {
//        ZStack {
//            GeometryReader{ proxy in
//                let size = proxy.size
//            TabView(selection: $currentReel) {
//                ForEach($reels){
//                    reel in
//                    ReelsPlayer(reel: reel)
//
//                }
//
//            }
//
//            .rotationEffect(.init(degrees: 90))
//            .frame(width: size.height)
//            .tabViewStyle(PageTabViewStyle())
//            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
//            .frame(width: size.width)
//            .ignoresSafeArea(.all)
//            }
//            .ignoresSafeArea(.all)
//
//        VStack(spacing:280){
//            HStack(spacing: 50){
//                Image("backarrow2")
//                    .resizable()
//                    .frame(width: 12, height: 19.24, alignment: .trailing)
//                    .padding(.bottom,10)
//                ZStack {
//                    RoundedRectangle(cornerRadius: 23)
//                          .fill(Color(#colorLiteral(red: 0.9529411792755127, green: 0.9215686321258545, blue: 0.9058823585510254, alpha: 0.75)))
//                          .frame(width: 246, height: 45)
//                    HStack {
//                        Text("East Atlanta Village").font(.custom("Futura Bold", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.16, green: 0.43, blue: 0.4, alpha: 1))).multilineTextAlignment(.center)
//                        ZStack {
//                    Circle()
//                    .fill(Color(#colorLiteral(red: 0.9921568632125854, green: 0.5568627715110779, blue: 0.30588236451148987, alpha: 1)))
//                    .frame(width: 30, height: 30)
//                            Image("Union")
//
//                        }
//
//                //East Atlanta Village
//
//                    }
//                    .padding(.leading,45)
//
//
//
//                }
//                Image("menudot")
//                    .padding(.bottom,8)
//            }
//            ZStack {
//                Image("")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(width: 80, height: 80)
//                .clipShape(Circle())
//                    .padding(.bottom,-500)
//                Circle()
//                .strokeBorder(LinearGradient(
//                        gradient: Gradient(stops: [
//                    .init(color: Color(#colorLiteral(red: 0.13333334028720856, green: 0.7568627595901489, blue: 0.7647058963775635, alpha: 1)), location: 0),
//                    .init(color: Color(#colorLiteral(red: 0.9921568632125854, green: 0.7333335280418396, blue: 0.1764705777168274, alpha: 1)), location: 1)]),
//                        startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
//                        endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 3)
//                    .padding(.bottom,-500)
//            }
//            .frame(width: 80, height: 80)
//
//            ZStack {
//                RoundedRectangle(cornerRadius: 30)
//                .fill(LinearGradient(
//                        gradient: Gradient(stops: [
//                    .init(color: Color(#colorLiteral(red: 0.2078431397676468, green: 0.22745098173618317, blue: 0.250980406999588, alpha: 1)), location: 0),
//                    .init(color: Color(#colorLiteral(red: 0.0855034738779068, green: 0.08923611044883728, blue: 0.1041666716337204, alpha: 1)), location: 1)]),
//                        startPoint: UnitPoint(x: 0.4999999533681315, y: -0.5647058680890755),
//                        endPoint: UnitPoint(x: 0.4999999533681311, y: 1)))
//
//                RoundedRectangle(cornerRadius: 30)
//                .strokeBorder(LinearGradient(
//                        gradient: Gradient(stops: [
//                    .init(color: Color(#colorLiteral(red: 0.25882354378700256, green: 0.27843138575553894, blue: 0.3137255012989044, alpha: 1)), location: 0),
//                    .init(color: Color(#colorLiteral(red: 0.125490203499794, green: 0.13725490868091583, blue: 0.14901961386203766, alpha: 1)), location: 1)]),
//                        startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
//                        endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 2)
//                VStack(spacing:20){
//                    HStack(spacing: 57) {
//                        Image("laugh")
//                        Image("clapemoji")
//                        Image("laugh")
//                        Image("flameemoji")
//                        Image("pooemoji")
//                    }
//                    HStack{
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 23)
//                                .fill(Color(#colorLiteral(red: 0.9529411792755127, green: 0.9215686321258545, blue: 0.9058823585510254, alpha: 1)))
//                            .frame(width: 301, height: 42)
//                                .padding()
//                            //Message to Gabriela ...
//                            Text("Message to Gabriela ...").font(.custom("Arimo Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.19, blue: 0.15, alpha: 1)))
//                                .padding(.trailing,90)
//
//                        }
//                        Image("sendmessageicon")
//                        .padding(.trailing,80)
//
//
//                    }
//                    .ignoresSafeArea(.all)
//
//                }
//
//            }
//            .compositingGroup()
//            .frame(width: 435, height: 159)
//            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:-6)
//            .padding(.bottom,-80)
//
//        }
//
//        }
//
//    }
//
//}
//
//struct LiveFeedView_Previews: PreviewProvider {
//    static var previews: some View {
//        LiveFeedView()
//            .ignoresSafeArea(.all)
//            .ignoresSafeArea(.container)
//    }
//}
//
//struct ReelsPlayer: View {
//
//
//
//    @Binding var reel: Reel
//
//    var body: some View {
//        ZStack{
//
//        }
//
//    }
//}
