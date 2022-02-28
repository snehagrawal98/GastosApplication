//
//  VerifiedSuccessfully.swift
//  Gastos_user_mvp1
//
//  Created by mnameit on 18/10/21.
//

import SwiftUI
import CodeScanner

struct VerifiedSuccessfully: View {
  @EnvironmentObject var loginViewModel: LoginViewModel

  // this is testing QR scanning
  @State var isShowingScanner = false
  @State var scannedCode = ""
  // till here, more at bottom


    var body: some View {
        NavigationView{
            VStack{
                Text("Your Account Has Been").foregroundColor(Color("5")).fontWeight(.regular).font(.system(size: 25))
                Text("Verified Successfully!").foregroundColor(Color("5")).fontWeight(.regular).font(.system(size: 25)).padding(.bottom)
                
                Image("onboardingScreen5")

              // this is testing QR scanning
                Text("scanned code: \(scannedCode)")
              // till here, more at bottom

                Spacer()
                HStack{
                    Spacer()
                    Text("Jump To Home").foregroundColor(Color("5")).fontWeight(.regular).font(.system(size: 20))
                  NavigationLink(destination: MainView(selectedTab: 2)
                                  .navigationBarHidden(true)
                                  .navigationBarBackButtonHidden(true), label: {
                    Image(systemName: "chevron.right").font(.system(size: 25)).foregroundColor(.white).frame(width: 50, height: 50, alignment: .center)
                    }).padding(3).background(Color("textGreen")).clipShape(Circle()).padding()


                  // this is testing QR scanning
                  Button(action: {
                    isShowingScanner = true
                  }, label: {
                    Text("show scanner")
                      .padding()
                  })
                  // till here, more at bottom
                }
            }
            .navigationBarItems(leading: Image(systemName: "arrow.backward")).foregroundColor(Color("deepGreen"))
          // this is testing QR scanning
            .sheet(isPresented: $isShowingScanner) {
              CodeScannerView(codeTypes: [.qr], simulatedData: "hello\nhow r u", completion: handleScan)
            }
          // this is testing QR scanning
        }
        .onDisappear(perform: self.changeDidShowVerifiedOnce)
    }

  func changeDidShowVerifiedOnce() {
    loginViewModel.didShowVerifiedScreenOnce = true
  }

  // this is testing QR scanning
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
  // code for qr testing ends here
}

struct VerifiedSuccessfully_Previews: PreviewProvider {
    static var previews: some View {
        VerifiedSuccessfully()
        .environmentObject(LoginViewModel())
    }
}
