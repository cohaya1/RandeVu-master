//
//  NeighborhoodInfo.swift
//  RandeVu
//
//  Created by Chika Ohaya on 6/6/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//

import SwiftUI

struct NeighborhoodInfo: View {
    
    var body: some View {
        VStack {
            HStack(spacing: 30) {
                Button(action: { }) {
                    Image("exitesta")
                    
                }
                Text("Char Korean Bar & Grill").font(.custom("Bold", size: 24)).foregroundColor(Color(#colorLiteral(red: 0.21, green: 0.19, blue: 0.15, alpha: 1))).multilineTextAlignment(.center)
             
            }
            
        ZStack {
            //Rectangle 362
            RoundedRectangle(cornerRadius: 30)
                .fill(Color(#colorLiteral(red: 0.9529411792755127, green: 0.9215686321258545, blue: 0.9058823585510254, alpha: 1)))
            .frame(width: 315, height: 450)
            .shadow(color: Color(#colorLiteral(red: 0.2078431397676468, green: 0.1882352977991104, blue: 0.14901961386203766, alpha: 0.25)), radius:25, x:2, y:2)
            //Ellipse 105
            Circle()
                .fill(LinearGradient(
                        gradient: Gradient(stops: [
                    .init(color: Color(#colorLiteral(red: 0.13333334028720856, green: 0.7568627595901489, blue: 0.7647058963775635, alpha: 1)), location: 0),
                    .init(color: Color(#colorLiteral(red: 0.9921568632125854, green: 0.7333335280418396, blue: 0.1764705777168274, alpha: 1)), location: 1)]),
                        startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                        endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)))
            .frame(width: 225, height: 225)
                .padding(.bottom,200)
            //Ellipse 1
            Image("estaview")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 204.5, height: 204.5)
                .clipShape(Circle())
            .frame(width: 204.5, height: 204.5)
                .padding(.bottom,200)
            VStack {
                //299 North Highland Ave NE,...
                Text("299 North Highland Ave NE,  \nAtlanta, GA  30307").font(.custom("Arimo Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.16, green: 0.43, blue: 0.4, alpha: 1))).lineSpacing(5).multilineTextAlignment(.center)
                Text("404-525-2427").font(.custom("Arimo Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.16, green: 0.43, blue: 0.4, alpha: 1))).multilineTextAlignment(.center)
                HStack {
                    Image("Star 1")
                    Image("Star 2")
                    Image("Star 3")
                    Image("Star 4")
                    Image("Star 5")
                }
                Text("3 mil").font(.custom("Arimo Regular", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.16, green: 0.43, blue: 0.4, alpha: 1))).multilineTextAlignment(.center)
                    .padding(.leading,200)
                    .padding(.top,10)
                    
            }.padding(.top,200)
            
        }
        
    }
}
}
struct _FlexibleView<Data: Collection, Content: View>: View where Data.Element: Hashable {
  let availableWidth: CGFloat
  let data: Data
  let spacing: CGFloat
  let alignment: HorizontalAlignment
  let content: (Data.Element) -> Content
  @State var elementsSize: [Data.Element: CGSize] = [:]

  var body : some View {
    VStack(alignment: alignment, spacing: spacing) {
      ForEach(computeRows(), id: \.self) { rowElements in
        HStack(spacing: spacing) {
          ForEach(rowElements, id: \.self) { element in
            content(element)
              .fixedSize()
              .readSize { size in
                elementsSize[element] = size
              }
          }
        }
      }
    }
  }

  func computeRows() -> [[Data.Element]] {
    var rows: [[Data.Element]] = [[]]
    var currentRow = 0
    var remainingWidth = availableWidth

    for element in data {
      let elementSize = elementsSize[element, default: CGSize(width: availableWidth, height: 1)]

      if remainingWidth - (elementSize.width + spacing) >= 0 {
        rows[currentRow].append(element)
      } else {
        currentRow = currentRow + 1
        rows.append([element])
        remainingWidth = availableWidth
      }

      remainingWidth = remainingWidth - (elementSize.width + spacing)
    }

    return rows
  }
}

extension View {
  func readSize(onChange: @escaping (CGSize) -> Void) -> some View {
    background(
      GeometryReader { geometryProxy in
        Color.clear
          .preference(key: SizePreferenceKey.self, value: geometryProxy.size)
      }
    )
    .onPreferenceChange(SizePreferenceKey.self, perform: onChange)
  }
}

private struct SizePreferenceKey: PreferenceKey {
  static var defaultValue: CGSize = .zero
  static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}

struct NeighborhoodInfo_Previews: PreviewProvider {
    static var previews: some View {
        NeighborhoodInfo()
    }
}
