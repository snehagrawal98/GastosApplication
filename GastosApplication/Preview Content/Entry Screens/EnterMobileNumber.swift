//
//  EnterMobileNumber.swift
//  Gastos_user_mvp1
//
//  Created by mnameit on 17/10/21.
//

import SwiftUI


struct EnterMobileNumber: View {

  @State var nextScreen = false
  @StateObject var loginData = LoginViewModel()
  @State var countryCode = "+91"

  var body: some View {
    ZStack {
      ZStack{

          Image("Layer").offset(x: 100.0, y: -250.0)
        VStack{

          HStack{
            Text("Welcome to").fontWeight(.semibold).font(.system(size: 25)).foregroundColor(Color("5"))
              //.shadow(radius: 3, x: 0.0, y: 5)
              .padding(.horizontal)
            Spacer()
          }

          HStack{
            Text("Gastos").fontWeight(.bold).font(.system(size: 40)).foregroundColor(Color("5"))
             // .shadow(radius: 3, x: 5, y: 5)
              .padding(.horizontal)
            Spacer()
          }.padding(.bottom, 30)

          HStack{
            Text("Enter Mobile Number").fontWeight(.regular).font(.system(size: 25)).foregroundColor(Color("5")).padding(.horizontal)
            Spacer()
          }

          HStack(spacing:0){
            TextField("+91", text: $countryCode).frame(width: 60, height: 60, alignment: .center).textFieldStyle(MyTextFieldStyle())
            TextField("Mobile Number", text: $loginData.phNo).textFieldStyle(MyTextFieldStyle())

          }.padding(.horizontal)

          Spacer()

          HStack{

            Spacer()

            NavigationLink(destination: OTPPin(loginData: loginData), isActive: $loginData.gotoVerify) {
              Text("")
                .hidden()
            }

            Button(action: loginData.sendCode, label: {
              Image(systemName: "chevron.right").font(.system(size: 25)).foregroundColor(.white).frame(width: 50, height: 50, alignment: .center)
            }).padding(3).background(Color("textGreen")).clipShape(Circle()).padding()
              .disabled(loginData.phNo == "" ? true : false)
          }
        }.padding(.vertical, 50)
      }

      if loginData.error {
        AlertView(msg: loginData.errorMsg, show: $loginData.error)
      }
    }

  }
}

struct EnterMobileNumber_Previews: PreviewProvider {
  static var previews: some View {
      EnterMobileNumber()
  }
}



extension View {
  func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
      clipShape( RoundedCorner(radius: radius, corners: corners) )
  }
}

struct RoundedCorner: Shape {

  var radius: CGFloat = .infinity
  var corners: UIRectCorner = .bottomLeft

  func path(in rect: CGRect) -> Path {
      let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
      return Path(path.cgPath)
  }
}
