//
//  VerifiedSuccessfully.swift
//  Gastos_user_mvp1
//
//  Created by mnameit on 18/10/21.
//

import SwiftUI

struct VerifiedSuccessfully: View {
  @State var showingHome = false

    var body: some View {
        NavigationView{
            VStack{
                Text("Your Account Has Been").foregroundColor(Color("5")).fontWeight(.regular).font(.system(size: 25))
                Text("Verified Successfully!").foregroundColor(Color("5")).fontWeight(.regular).font(.system(size: 25)).padding(.bottom)
                
                Image("onboardingScreen5")
                Spacer()
                HStack{
                    Spacer()
                    Text("Jump To Home").foregroundColor(Color("5")).fontWeight(.regular).font(.system(size: 20))
                  Button(action: {
                    showingHome.toggle()
                  }, label: {
                        Image(systemName: "chevron.right").font(.system(size: 25)).foregroundColor(.white).frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }).padding(3).background(Color("textGreen")).clipShape(Circle()).padding()
                    .fullScreenCover(isPresented: $showingHome, content: {
                        MainView(selectedTab: 2)
                    })
                }
            }.navigationBarItems(leading: Image(systemName: "arrow.backward")).foregroundColor(Color("5"))
        }
    }
}

struct VerifiedSuccessfully_Previews: PreviewProvider {
    static var previews: some View {
        VerifiedSuccessfully()
    }
}
