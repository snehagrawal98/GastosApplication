//
//  LoginViewModel.swift
//  GastosApplication
//
//  Created by Sai Kumar Kasireddi's MacBook on 29/01/22.
//

import SwiftUI
import Firebase

class LoginViewModel: ObservableObject {
  @Published var phNo = ""
  @Published var code = ""

  // data model for error view
  @Published var errorMsg = ""
  @Published var error = false

  // storing code for verification
  @Published var CODE = ""

  @Published var gotoVerify = false

  // user logged status
  @AppStorage("log_Status") var status = false

  // Loading view
  @Published var loading = false

  // Sending code to user
  func sendCode() {

    // enabling testing code
    // disable when you need to test with real device
    Auth.auth().settings?.isAppVerificationDisabledForTesting = true

    let number = "+91\(phNo)"
    PhoneAuthProvider.provider().verifyPhoneNumber(number, uiDelegate: nil) { (CODE, err) in

      if let error = err {

        self.errorMsg = error.localizedDescription
        withAnimation { self.error.toggle() }
        return
      }

      self.CODE = CODE ?? ""
      self.gotoVerify = true
    }
  }

  func verifyCode() {

    let credential = PhoneAuthProvider.provider().credential(withVerificationID: self.CODE, verificationCode: code)

    loading = true

    Auth.auth().signIn(with: credential) { (result, err) in

      self.loading = false

      if let error = err {
        self.errorMsg = error.localizedDescription
        withAnimation{ self.error.toggle() }
        return
      }
      // else user logged in successfully
      withAnimation{ self.status = true }
    }
  }

  func requestCode() {
    sendCode()
    withAnimation {
      self.errorMsg = "code sent successfully"
      self.error.toggle()

    }
  }
}
