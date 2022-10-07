//
//  ContentView.swift
//  SplashScreen
//
//  Created by Radhakrishnan Iyer, Aishwarya on 07/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Text("Home Screen of App")
                .foregroundColor(.white)
                .font(.system(size: 30))
                .bold()
                .padding()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
