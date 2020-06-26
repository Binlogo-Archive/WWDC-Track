//
//  SandwichDetail.swift
//  Sandwiches
//
//  Created by Dylan_Wang on 2020/6/26.
//

import SwiftUI

struct SandwichDetail: View {
    var sandwich: Sandwich
    @State private var isZoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(sandwich.imageName)
                .resizable()
                .aspectRatio(contentMode: isZoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        isZoomed.toggle()
                    }
                }
            Spacer(minLength: 0)
            if sandwich.isSpicy && !isZoomed {
                HStack {
                    Spacer()
                    Label("Spicy", systemImage: "flame.fill")
                    Spacer()
                }
                .padding(.all)
                .font(Font.headline.smallCaps())
                .background(Color.red)
                .foregroundColor(.yellow)
                .transition(.move(edge: .bottom))
            }
        }
        .navigationTitle(sandwich.name)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                SandwichDetail(sandwich: testData[0])
            }
            NavigationView {
                SandwichDetail(sandwich: testData[1])
            }
        }
    }
}
