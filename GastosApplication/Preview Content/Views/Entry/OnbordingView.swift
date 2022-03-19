//
//  Onbording.swift
//  Gastos_user_mvp1
//
//  Created by Rachit on 23/09/21.
//

import SwiftUI

struct OnbordingView: View {
    
    @State private var selection = 0
    @Binding var showOnboardingScreen: Bool
    
    var body: some View {
        
//        ZStack {
            VStack {
                PageTabView(selection: $selection, showOnboardingScreen: $showOnboardingScreen)
            }//.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            
        }
        //.transition(.move(edge: .trailing))
        
        //Text("Hello")
    //}
}

struct Onbording_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView(showOnboardingScreen: Binding.constant(true))
    }
}
