//
//  PageTabView.swift
//  Gastos_user_mvp1
//
//  Created by Vaishant Makan on 24/09/21.
//

import SwiftUI

struct PageTabView: View {
    
    @Binding var selection: Int
    @Binding var showOnboardingScreen: Bool
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(tabs.indices, id: \.self) { index in
                TabDetailsView(index: index, selection: $selection, showOnboardingScreen: $showOnboardingScreen)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .ignoresSafeArea(.all).frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    }
}

struct PageTabView_Previews: PreviewProvider {
    static var previews: some View {
        PageTabView(selection: Binding.constant(0), showOnboardingScreen: Binding.constant(true))
    }
}
