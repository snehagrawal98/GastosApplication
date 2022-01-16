//
//  ContentView.swift
//  Gastos_user_mvp1
//
//  Created by Rachit on 23/09/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showOnboardingScreen = true
    
    var body: some View {
        
        Group {
            if showOnboardingScreen {
                OnbordingView(showOnboardingScreen: $showOnboardingScreen)
            } else {
                AuthenticationView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
