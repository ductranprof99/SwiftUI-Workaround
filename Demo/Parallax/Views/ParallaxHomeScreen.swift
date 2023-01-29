//
//  ParallaxHomeScreen.swift
//  Demo
//
//  Created by Duc Tran on 25/01/2023.
//

import SwiftUI

struct ParallaxHomeScreen: View {
    @AppStorage("isOnSwipeScreen") var backToSwipe: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Spacer()
            
            Image("parallax-home")
                .resizable()
                .scaledToFit()
                .padding(20)
            
            Text("This is a home screen, is that what you want")
                .font(.title3)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(30)
            
            Spacer()
            
            Button(action: {
                backToSwipe = !backToSwipe
            }) {
                
                Image(systemName: "arrow.triangle.2.circlepath.circle")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3,design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .foregroundColor(.white)
            .tint(Color("parallaxBlue"))
        }
        .background(Color("parallax_homeBackground"))
    }
}

struct ParallaxHomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        ParallaxHomeScreen()
    }
}
