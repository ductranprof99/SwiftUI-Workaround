//
//  RestartContext.swift
//  Demo
//
//  Created by Duc Tran on 25/01/2023.
//

import SwiftUI

struct RestartContext: View {
    
    @AppStorage("isOnSwipeScreen") var onSwipeScreen: Bool = true
    
    var body: some View {
        ZStack(content: {
            if onSwipeScreen {
                SwipeScreen()
            } else {
                ParallaxHomeScreen()
            }
        })
    }
}

struct RestartContext_Previews: PreviewProvider {
    static var previews: some View {
        RestartContext()
    }
}
