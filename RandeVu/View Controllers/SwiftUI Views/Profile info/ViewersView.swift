//
//  ViewersView.swift
//  RandeVu
//
//  Created by Chika Ohaya on 5/6/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//

import SwiftUI


struct ViewersView: View {
    @State private var textFieldData = " "
    var body: some View {
        VStack {
            HStack(){
            Text("Kelly Madison").font(.custom("Futura Bold", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.19, blue: 0.15, alpha: 1)))
                
                
            Button(action: {}) {
                Image("Arrowtonext")
                    .resizable()
                    .scaledToFit()
                    .frame(width:12,height: 19.24)
                    .padding(.leading,100)
    }
            
                
}
            .padding(.leading,120)
            .padding(.top,-60)

        ZStack {
            Image("i")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 315, height: 450)
            .clipShape(RoundedRectangle(cornerRadius: 12))

            RoundedRectangle(cornerRadius: 12)
            .fill(LinearGradient(
                    gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 0.16470588743686676, green: 0.16862745583057404, blue: 0.16470588743686676, alpha: 0.15000000596046448)), location: 0.7239583134651184),
                .init(color: Color(#colorLiteral(red: 0.16470588743686676, green: 0.16862745583057404, blue: 0.16470588743686676, alpha: 1)), location: 1)]),
                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)))
            VStack{
                HStack{
                    Image("location")
                        .resizable()
                        .frame(width:14,height: 15)
            Text("Venice,CA").font(.custom("Rubik Medium", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    
                
                }
                .padding(.trailing,28)
                HStack {
                Image("heart")
                    .resizable()
                    .frame(width:14,height: 15)
            Text("Men & Women").font(.custom("Rubik Medium", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }
                HStack {
            Image("preference")
                .resizable()
                .frame(width:14,height: 15)
            Text("Gemini").font(.custom("Rubik Medium", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    
            
                }
                .padding(.trailing,48)
                HStack{
                Image("act")
                    .resizable()
                    .frame(width:14,height: 15)
            Text("Kentucky Mule").font(.custom("Rubik Medium", size: 14)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }
            }
            .padding(.top,350)
            .padding(.trailing,190)
        }
        .compositingGroup()
        
        .frame(width: 315, height: 450)
        .shadow(color: Color(#colorLiteral(red: 0.2078431397676468, green: 0.1882352977991104, blue: 0.14901961386203766, alpha: 0.25)), radius:25, x:4, y:4)
        
            HStack(spacing:10){
            ZStack {
               
                Image("i")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 73.7, height: 73.7)
                .clipShape(Circle())

                Circle()
                .strokeBorder(LinearGradient(
                        gradient: Gradient(stops: [
                    .init(color: Color(#colorLiteral(red: 0.13333334028720856, green: 0.7568627595901489, blue: 0.7647058963775635, alpha: 1)), location: 0),
                    .init(color: Color(#colorLiteral(red: 0.9921568632125854, green: 0.7333335280418396, blue: 0.1764705777168274, alpha: 1)), location: 1)]),
                        startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                        endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 2.6810810565948486)
            }
            .frame(width: 73.7, height: 73.7)
            
            //Pue
                ZStack {
                Image("i")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 73.7, height: 73.7)
                .clipShape(Circle())

                Circle()
                .strokeBorder(LinearGradient(
                        gradient: Gradient(stops: [
                    .init(color: Color(#colorLiteral(red: 0.13333334028720856, green: 0.7568627595901489, blue: 0.7647058963775635, alpha: 1)), location: 0),
                    .init(color: Color(#colorLiteral(red: 0.9921568632125854, green: 0.7333335280418396, blue: 0.1764705777168274, alpha: 1)), location: 1)]),
                        startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                        endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 2.6810810565948486)
                }
                ZStack {
                Image("i")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 73.7, height: 73.7)
                .clipShape(Circle())

                Circle()
                .strokeBorder(LinearGradient(
                        gradient: Gradient(stops: [
                    .init(color: Color(#colorLiteral(red: 0.13333334028720856, green: 0.7568627595901489, blue: 0.7647058963775635, alpha: 1)), location: 0),
                    .init(color: Color(#colorLiteral(red: 0.9921568632125854, green: 0.7333335280418396, blue: 0.1764705777168274, alpha: 1)), location: 1)]),
                        startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                        endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)), lineWidth: 2.6810810565948486)
                }
                
            }
            .frame(width: 73.7, height: 73.7)
            .padding(.top,105)
            HStack(spacing: 55){
            Text("Pue").font(.custom("Arimo Regular", size: 16.1)).foregroundColor(Color(#colorLiteral(red: 0.16, green: 0.43, blue: 0.4, alpha: 1)))
                Text("Pue").font(.custom("Arimo Regular", size: 16.1)).foregroundColor(Color(#colorLiteral(red: 0.16, green: 0.43, blue: 0.4, alpha: 1)))
                    
                Text("Pue").font(.custom("Arimo Regular", size: 16.1)).foregroundColor(Color(#colorLiteral(red: 0.16, green: 0.43, blue: 0.4, alpha: 1)))
                    
            }
            ZStack(){
                if textFieldData.isEmpty{
                    Text("Send a message to Kelly ...").font(.custom("Arimo Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.19, blue: 0.15, alpha: 1)))
                }
                
                HStack {
                TextField("",text: $textFieldData)
                    
                    .textFieldStyle(CustomTextField())
                    
                }
                
            }
            
            }
       
        
    }
        
    
}
struct CustomTextField: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(300)
            .background(Color(#colorLiteral(red: 0.9529411792755127, green: 0.9215686321258545, blue: 0.9058823585510254, alpha: 1)))
            .frame(width: 485, height: 60)
            .cornerRadius(30)
            
        //    .position(x: 210, y: 152)
    }
}

struct ViewersView_Previews: PreviewProvider {
    static var previews: some View {
        ViewersView()
    }
}
