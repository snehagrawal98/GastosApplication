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

  //  var body: some View {
//
//      ZStack {
//        NavigationView {
//          Group {
//                if showOnboardingScreen {
//                    OnbordingView(showOnboardingScreen: $showOnboardingScreen)
//                } else {
//                    EnterMobileNumber()
//              }
//          }
//          .navigationBarHidden(true)
//          .navigationBarBackButtonHidden(true)
//        }
//      }
//    }
// }


    var body: some View {
      ZStack {
        if status {
          // change to SetPin view after phone call testing
          SetPin()
        } else {
          NavigationView {
            EnterMobileNumber()
              .navigationBarHidden(true)
              .navigationBarBackButtonHidden(true)
          }

        }
      }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
