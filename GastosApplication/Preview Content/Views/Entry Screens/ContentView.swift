//
//  ContentView.swift
//  Gastos_user_mvp1
//
//  Created by Rachit on 23/09/21.
//

import SwiftUI

struct ContentView: View {
  @AppStorage("log_Status") var status = false
  @State private var showOnboardingScreen = true
  @StateObject var loginViewModel = LoginViewModel()
  @StateObject var currentUser = CurrentUser()

    var body: some View {
        ZStack {
          if status && loginViewModel.didSetPin && loginViewModel.didEnterUserDetails && loginViewModel.didShowVerifiedScreenOnce {
            withAnimation { MainView(selectedTab: 0) }
          } else if status && loginViewModel.didSetPin {
            ProfilePage()
          } else if status {
            SetPin()
          } else if showOnboardingScreen {
            OnbordingView(showOnboardingScreen: $showOnboardingScreen)
          } else {
            EnterMobileNumber()
          }
        }
        .environmentObject(loginViewModel)
        .environmentObject(currentUser)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(currentUser: CurrentUser())
    }
}



#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif



extension Binding where Value == String {
    func max(_ limit: Int) -> Self {
        if self.wrappedValue.count > limit {
            DispatchQueue.main.async {
                self.wrappedValue = String(self.wrappedValue.dropLast())
            }
        }
        return self
    }
}
