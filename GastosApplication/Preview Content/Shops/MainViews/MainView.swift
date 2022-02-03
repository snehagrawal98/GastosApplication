//
//  MainView.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 12/01/22.
//

import SwiftUI

struct MainView: View {
  @State var selectedTab: Int

  var body: some View {
    TabView(selection: $selectedTab) {

      // Coupons
      ProgressView()
        .tabItem {
          Image("Tab1")
            .renderingMode(.template)
        }
        .tag(0)

      // Elite Market
      ProgressView()
        .tabItem {
          Image("Tab2")
            .renderingMode(.template)
        }
        .tag(1)

      // Home Tab
      HomeTab()
        .tabItem {
          if selectedTab == 2 {
            Image("HomeTab")
              .scaleEffect(5)
          } else {
            Image("Tab3")
              .renderingMode(.template)
          }
        }
        .tag(2)

      // Local Market
      LocalMarket()
        .tabItem {
          Image("Tab4")
            .renderingMode(.template)
        }
        .tag(3)

      // Transactions
      ProgressView()
        .tabItem {
          Image("Tab5")
            .renderingMode(.template)
        }
        .tag(4)
    }
  }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
      MainView(selectedTab: 2)
    }
}
