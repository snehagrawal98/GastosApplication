//
//  EnterPin.swift
//  Gastos_user_mvp1
//
//  Created by mnameit on 19/10/21.
//

import SwiftUI

struct EnterPin: View {
    
    @State private var name1 = ""
    @State var resetPin = false
  @ObservedObject var loginViewModel: LoginViewModel
  @ObservedObject var currentUser: CurrentUser

    var body: some View {
       // NavigationView{
            ZStack{
                Image("Layer3").offset(x: 100.0, y: -350.0)
                VStack{
                    HStack{
                        Text("Enter Your 4-Digit Pin").foregroundColor(Color("5")).font(.system(size: 25)).fontWeight(.medium).padding(.leading)
                    Spacer()
                    }
                    
                    HStack{
                        TextField("Pin", text: $name1.max(4)).frame(width: 350, height: 65, alignment: .center).onTapGesture {
                        self.hideKeyboard()
                    }
                        .textFieldStyle(MyTextFieldStyle()).padding(.leading, 3)
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                        Button(action: {
                            self.resetPin.toggle()
                        }, label: {
                        Text("Reset Pin").foregroundColor(.gray).fontWeight(.medium).font(.system(size: 13))
                    }).padding(.horizontal).background(
                        Capsule().stroke(Color.gray)
                            .shadow(color: Color("gray"), radius: 43, x: 0.0, y: 10.0).foregroundColor(.white)).fullScreenCover(isPresented: $resetPin, content: {
                                SetPin()
                            })
                    }
                   
                    
                    Spacer()
                    HStack{
                        
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "chevron.right").font(.system(size: 25)).foregroundColor(.white).frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }).padding(3).background(Color("7")).clipShape(Circle()).padding()
                    }
                }
            }.navigationBarItems(leading: Image(systemName: "arrow.backward")).foregroundColor(Color("5"))
        //}
    }
}

struct EnterPin_Previews: PreviewProvider {
    static var previews: some View {
      EnterPin(loginViewModel: LoginViewModel(), currentUser: CurrentUser())
    }
}
