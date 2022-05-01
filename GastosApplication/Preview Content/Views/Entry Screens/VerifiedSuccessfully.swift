//
//  VerifiedSuccessfully.swift
//  Gastos_user_mvp1
//
//  Created by mnameit on 18/10/21.
//

import SwiftUI

struct VerifiedSuccessfully: View {
  @EnvironmentObject var loginViewModel: LoginViewModel
  @EnvironmentObject var currentUser: CurrentUser

    var body: some View {
       // NavigationView{
            VStack{
                Text("Your Account Has Been").foregroundColor(Color("5")).fontWeight(.regular).font(.system(size: 25))
                Text("Verified Successfully!").foregroundColor(Color("5")).fontWeight(.regular).font(.system(size: 25)).padding(.bottom)
                
                Image("onboardingScreen5")
                Spacer()
                HStack{
                    Spacer()
                    Text("Jump To Home").foregroundColor(Color("5")).fontWeight(.regular).font(.system(size: 20))

                  Button(action: {
                    loginViewModel.didShowVerifiedScreenOnce = true
                  }, label: {
                    Image(systemName: "chevron.right")
                      .font(.system(size: 25))
                      .foregroundColor(.white).frame(width: 50, height: 50, alignment: .center)
                      .padding(3).background(Color("textGreen")).clipShape(Circle()).padding()
                  })
//                  NavigationLink(destination: MainView(selectedTab: 2)
//                                  .navigationBarHidden(true)
//                                  .navigationBarBackButtonHidden(true), label: {
//                    Image(systemName: "chevron.right").font(.system(size: 25)).foregroundColor(.white).frame(width: 50, height: 50, alignment: .center)
//                    }).padding(3).background(Color("textGreen")).clipShape(Circle()).padding()
                }
            }
//            .navigationBarItems(leading: Image(systemName: "arrow.backward")).foregroundColor(Color("deepGreen"))
        //}
        //.onDisappear(perform: self.changeDidShowVerifiedOnce)
    }

  func changeDidShowVerifiedOnce() {
    loginViewModel.didShowVerifiedScreenOnce = true
  }
}

struct VerifiedSuccessfully_Previews: PreviewProvider {
    static var previews: some View {
        VerifiedSuccessfully()
        .environmentObject(LoginViewModel())
        .environmentObject(CurrentUser())
    }
}
