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
            
            Text("Home screen")
                .font(.largeTitle)
                .foregroundColor(.red)
            
            Button(action: {
                backToSwipe = !backToSwipe
            }) {
                Text("Restart")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }
        }
    }
}

struct ParallaxHomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        ParallaxHomeScreen()
    }
}
