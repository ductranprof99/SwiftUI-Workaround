//
//  SwipeScreen.swift
//  Demo
//
//  Created by Duc Tran on 25/01/2023.
//

import SwiftUI

struct SwipeScreen: View {
    
//    var buttonHandler: (() -> Void) {
//        get {
//            swipeScreen = !swipeScreen
//            return {}
//        }
//    }
    
    @AppStorage("isOnSwipeScreen") var swipeScreen: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Yo Yo Yo")
                .font(.largeTitle)
                .foregroundColor(.red)
            
            Button(action: {
                swipeScreen = !swipeScreen
            }) {
                Text("Start")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }
        }
    }
    
}

struct SwipeScreen_Previews: PreviewProvider {
    static var previews: some View {
        SwipeScreen()
    }
}
