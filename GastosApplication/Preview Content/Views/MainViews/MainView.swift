//
//  MainView.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 12/01/22.
//

import SwiftUI

struct MainView: View {
  @State var selectedTab: Int
  @EnvironmentObject var loginViewModel: LoginViewModel
  @EnvironmentObject var currentUser: CurrentUser

  var body: some View {
    NavigationView {
      TabView(selection: $selectedTab) {

        // Coupons
        ExclusiveDeals()
          .tabItem {
            Image("Tab1")
              .renderingMode(.template)
          }
          .tag(0)

        // Elite Market
        EliteMarket()
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
        Expenses()
          .tabItem {
            Image("Tab5")
              .renderingMode(.template)
          }
          .tag(4)
      }
      .onAppear(perform: self.readUserDetails)
      .edgesIgnoringSafeArea(.all)
      .navigationBarHidden(true)
      .navigationBarBackButtonHidden(true)
    }
    .navigationBarHidden(true)
    .navigationBarBackButtonHidden(true)
  }


  func readUserDetails() {
    if loginViewModel.didShowMainViewOnce == 0 {
      loginViewModel.didShowMainViewOnce += 1
    } else if loginViewModel.didShowMainViewOnce == 1 {
      loginViewModel.readCurrentUser()
    }
  }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
      MainView(selectedTab: 2)
        .environmentObject(LoginViewModel())
        .environmentObject(CurrentUser())
    }
}
