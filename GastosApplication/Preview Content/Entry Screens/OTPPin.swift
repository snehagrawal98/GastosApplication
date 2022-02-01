//
//  OTPPin.swift
//  Gastos_user_mvp1
//
//  Created by mnameit on 20/10/21.
//

import SwiftUI

struct OTPPin: View {

  @State var nextPin = false
  @ObservedObject var loginData: LoginViewModel
  @Environment(\.dismiss) var dismiss

  var body: some View {
      ZStack{
            Image("Layer3").offset(x: 95.0, y: -300.0)
            VStack{
                Text("Verify").foregroundColor(Color("5")).font(.system(size: 25)).fontWeight(.medium).padding(.vertical, 30)
                Text("We have sent an otp on ").foregroundColor(Color("5")).font(.system(size: 18)).fontWeight(.medium)
                Text("your mobile number").foregroundColor(Color("5")).font(.system(size: 18)).fontWeight(.medium).padding(.bottom, 100)


                HStack{

                  TextField("Enter OTP", text: $loginData.code).textFieldStyle(MyTextFieldStyle())


//                    TextField("", text: $otp1).frame(width: 30, height: 30, alignment: .center).underlineTextField().keyboardType(.decimalPad)
//                    TextField("", text:$otp2).frame(width: 30, height: 30, alignment: .center).underlineTextField().keyboardType(.decimalPad)
//                    TextField("", text:$otp3).frame(width: 30, height: 30, alignment: .center).underlineTextField().keyboardType(.decimalPad)
//                    TextField("", text:$otp4).frame(width: 30, height: 30, alignment: .center).underlineTextField().keyboardType(.decimalPad)
//                    TextField("", text:$otp5).frame(width: 30, height: 30, alignment: .center).underlineTextField().keyboardType(.decimalPad)
//                    TextField("", text:$otp6).frame(width: 30, height: 30, alignment: .center).underlineTextField().keyboardType(.decimalPad)


                }.padding().background(
                    RoundedRectangle(cornerRadius: 40)
                        .shadow(color: Color("gray"), radius: 43, x: 0.0, y: 10.0).foregroundColor(.white)
                )
                HStack{
                    Spacer()
                    Button(action: {

                    }, label: {
                    Text("Resend OTP").foregroundColor(.gray).fontWeight(.medium).font(.system(size: 13))
                }).padding(.horizontal).background(
                    Capsule().stroke(Color.gray)
                        .shadow(color: Color("gray"), radius: 43, x: 0.0, y: 10.0).foregroundColor(.white)
                ).padding(9)
                }
                Spacer()

                HStack{
                    Spacer()

                  Button(action: loginData.verifyCode, label: {
                    Image(systemName: "chevron.right").font(.system(size: 25)).foregroundColor(.white).frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }).padding(3).background(Color("textGreen")).clipShape(Circle()).padding()
                }
            }
      }
      .alert(isPresented: $loginData.error) {
        Alert(title: Text("Message"), message: Text(loginData.errorMsg), dismissButton: .default(Text("Ok")))
      }
  }
}

struct OTPPin_Previews: PreviewProvider {
    static var previews: some View {
        OTPPin(loginData: LoginViewModel())
    }
}

extension View {
  func underlineTextField() -> some View {
      self
          .padding(.vertical, 10)
          .overlay(Rectangle().frame(height: 2).padding(.top, 35))
          .foregroundColor(Color("5"))
          .padding(5)
  }
}
