//
//  SplashScreenView.swift
//  SplashScreen
//
//  Created by Radhakrishnan Iyer, Aishwarya on 07/10/22.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive = false
    @State var size = 0.7
    @State var opacity = 0.4
    
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                Image("mascot")
                Text("Learning Code online")
                    .font(.system(size: 30))
                    .foregroundColor(.black)
                    .opacity(0.7)
                    
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration:1.0)) {
                    self.size = 1.0
                    self.opacity = 1.0
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
