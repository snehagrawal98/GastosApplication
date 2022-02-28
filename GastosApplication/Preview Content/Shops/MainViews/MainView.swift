//
//  MainView.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 12/01/22.
//

import SwiftUI
import CodeScanner

struct MainView: View {
  @State var selectedTab: Int
  @State var isShowingScanner = false
  @State var scannedCode = ""
  @EnvironmentObject var loginViewModel: LoginViewModel
  @EnvironmentObject var currentUser: CurrentUser

  var body: some View {
    NavigationView {
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
//              Button(action: {
//                isShowingScanner = true
//              }, label: {
                Image("HomeTab")
                  .frame(width: 20, height: 20)
                  .onTapGesture {
                    isShowingScanner = true
                  }
//              })
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
      .onAppear(perform: self.readUserDetails)
      .navigationBarHidden(true)
      .navigationBarBackButtonHidden(true)
      .sheet(isPresented: $isShowingScanner) {
        CodeScannerView(codeTypes: [.qr], simulatedData: "hello\nhow r u", completion: handleScan)
      }
    }
  }
  
  func readUserDetails() {
    if loginViewModel.didShowMainViewOnce == 0 {
      loginViewModel.didShowMainViewOnce += 1
    } else if loginViewModel.didShowMainViewOnce == 1 {
      loginViewModel.readCurrentUser()
    }
  }

  // func for scanning
  func handleScan(result: Result<ScanResult, ScanError>) {
    isShowingScanner = false

    switch result {
    case .success(let result):
      scannedCode = result.string // .components(separatedBy: "\n")
      guard !scannedCode.isEmpty else { return }

    case .failure(let error):
      print("Scanning failed: \(error.localizedDescription)")
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
