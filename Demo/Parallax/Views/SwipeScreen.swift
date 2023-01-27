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
        ZStack {
            
            Color("ParallaxBackground")
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20) {
                
                Spacer()
                VStack (spacing: 0) {
                    Text("Share")
                        .fontWeight(.heavy)
                        .font(.system(size: 60))
                        .foregroundColor(Color("ParallaxTitleColor"))
                    
                    Text("this text here mean nothing, it is a place holder like loremm ispumm, and because its nnnnnnniggga ")
                        .font(.title2)
                        .fontWeight(.light)
                        .padding(.horizontal, 20)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ParallaxTitleColor"))
                }
                
                Spacer()
                
                ZStack {
                    ZStack {
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 260, height: 260, alignment: .center)
                        
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 260, height: 260, alignment: .center)
                    }
                    
                    Image("parallax-swipe")
                        .resizable()
                        .scaledToFit()
                }
                        
                Spacer()
                
                ZStack {
                    
                    Text("Slide to unlock")
                        .font(.system(.title3, design: .rounded))
                        .offset(x: 20)
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    
                    HStack {
                        Capsule()
                            .fill(Color("ParallaxSliderColor"))
                            .frame(width: 80)
                        
                        Spacer()
                    }
                    
                    HStack {
                        ZStack {
                            Capsule()
                                .fill(Color("ParallaxSliderColor"))
                            
                            Capsule()
                                .fill(.black.opacity(0.2))
                                .padding(8)
                            
                            Image(systemName: "chevron.right.2")
                                .foregroundColor(.white)
                                .font(.system(size: 24, weight: .medium))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        
                        Spacer()
                    }
                    .onTapGesture {
                        // Do sth here
                    }
                }
                .frame(height: 80, alignment: .center)
                .padding(40)
                
                
            }
        }
    }
    
}

struct SwipeScreen_Previews: PreviewProvider {
    static var previews: some View {
        SwipeScreen()
    }
}
