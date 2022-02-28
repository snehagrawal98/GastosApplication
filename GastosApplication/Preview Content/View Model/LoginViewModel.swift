//
//  LoginViewModel.swift
//  GastosApplication
//
//  Created by Sai Kumar Kasireddi's MacBook on 29/01/22.
//

import SwiftUI
import Firebase

class LoginViewModel: ObservableObject {
  @Published var code = ""

  // data model for error view
  @Published var errorMsg = ""
  @Published var error = false

  // storing code for verification
  @Published var CODE = ""

  @Published var gotoVerify = false

  // user logged status
  @AppStorage("log_Status") var status = false
  @AppStorage("didSetPin") var didSetPin = false
  @AppStorage("didEnterUserDetails") var didEnterUserDetails = false
  @AppStorage("didShowVerifiedScreenOnce") var didShowVerifiedScreenOnce = false
  @AppStorage("didShowMainViewOnce") var didShowMainViewOnce = 0

  // Loading view
  @Published var loading = false

  // Sending code to user
  func sendCode() {

    // enabling testing code
    // disable when you need to test with real device
    //Auth.auth().settings?.isAppVerificationDisabledForTesting = true

    let number = "+91\(phone)"
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
      // this code is for writing data to realtime database
      self.uid = result?.user.uid ?? ""
      self.registerUser()
    }
  }

  func requestCode() {
    sendCode()
    withAnimation {
      self.errorMsg = "code sent successfully"
      self.error.toggle()
    }
  }

  // code for real time database
  var ref: DatabaseReference?
  private var db = Database.database()

  @Published var uid = ""
  @Published var dob = ""
  @Published var email = ""
  @Published var gender = ""
  @Published var pin = ""
  @Published var name = ""
  @Published var phone = ""

  // functions
  func registerUser() {
    let ref = db.reference().child("Users")

    ref.child("\(uid)/Phone").setValue(phone)
  }

  func registerUserPin() {
    let ref = db.reference().child("Users")

    ref.child("\(uid)/Pin").setValue(pin)
    didSetPin = true
  }

  func registerUserDetails() {
    let ref = db.reference().child("Users")

    ref.child("\(uid)/DOB").setValue(dob)
    ref.child("\(uid)/Email").setValue(email)
    ref.child("\(uid)/Gender").setValue(gender)
    ref.child("\(uid)/Name").setValue(name)
    didEnterUserDetails = true
  }

  // for reading current user from realtime database
  func readCurrentUser() {
    let ref = db.reference().child("Users/\(uid)")

    print("ran till 127")
    //if self.didShowMainViewOnce == 1 {
      ref.observe(DataEventType.value) { snapshot in
        let value = snapshot.value as? NSDictionary
        self.dob = value?["DOB"] as? String ?? self.dob
        self.email = value?["Email"] as? String ?? self.email
        self.gender = value?["Gender"] as? String ?? self.gender
        self.name = value?["Name"] as? String ?? self.name
        self.phone = value?["Phone"] as? String ?? self.phone
        self.pin = value?["Pin"] as? String ?? self.pin
      }
    //}

    print("ran till 135")

  }
}

// class to store current user data
class CurrentUser: ObservableObject {
  @Published var uid = " "
  @Published var dob = " "
  @Published var email = " "
  @Published var gender = " "
  @Published var pin = " "
  @Published var name = " "
  @Published var phone = " "
}


