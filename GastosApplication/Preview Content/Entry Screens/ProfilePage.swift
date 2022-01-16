//
//  ProfilePage.swift
//  Gastos_user_mvp1
//
//  Created by mnameit on 18/10/21.
//

import SwiftUI

struct ProfilePage: View {
    
    @ObservedObject var firebaseRegister = FirebaseViewModel()
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var emailAddress = ""
    @State private var code = ""
    @State var date = Date()

    
    var body: some View {
        NavigationView{
            VStack(spacing: 15){
                Text("Personal Details").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 25))
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                   
                        Image(systemName: "person.crop.circle.fill.badge.plus").font(.system(size: 80)).foregroundColor(Color("6"))
                       
                    
                })
                
                HStack(spacing: 0){
                    TextField("First Name", text: $firstName).frame(width: 165).textFieldStyle(MyTextFieldStyle())
                    TextField("Last Name", text: $lastName).frame(width: 165).textFieldStyle(MyTextFieldStyle())
                }.frame(minWidth: 0, maxWidth: .infinity,  alignment: .center).frame(width: 352)
                
                TextField("E-Mail address", text: $emailAddress).frame(width: 350).textFieldStyle(MyTextFieldStyle())
                
                HStack{
                    Text("Birth Date").foregroundColor(Color("5")).font(.system(size: 19))
                    DatePicker("", selection: $date, displayedComponents: .date).colorInvert()
                        .colorMultiply(Color.blue)
                }.padding(.horizontal).frame(width: 350)
                
                HStack(spacing:5){
                    Text("Gender").foregroundColor(Color("5")).font(.system(size: 19))
                   Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack{
                        Image("female")
                            Text("female")
                        }
                    }).padding(8).background(Color.white).cornerRadius(10.0).shadow(color: Color("gray"), radius: 9, x: 0, y: 0)//.frame(width: 100)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack{
                        Image("male")
                            Text("male")
                        }
                    }).padding(5).background(Color.white).cornerRadius(10.0).shadow(color: Color("gray"), radius: 4, x: 0, y: 0)
                }.padding(.horizontal).padding(.vertical, 5).frame(width: 350)
                
                HStack{
                    Text("Have a referral code?").foregroundColor(Color("5")).font(.system(size: 19)).padding(.leading)
                Spacer()
                }.frame(width: 338)
                ZStack{
                TextField("Enter Code", text: $emailAddress).textFieldStyle(MyTextFieldStyle())
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Validate").foregroundColor(.white)
                    }).padding(5).background(Color("7")).cornerRadius(5.0).offset(x: 130)
                    
                }.frame(width: 350)
                
                
                HStack{
                    Spacer()
                    Button(action: {
//                        firebaseRegister.register(user: <#T##GUser#>)
                    }, label: {
                        Image(systemName: "chevron.right").font(.system(size: 20)).foregroundColor(.white).frame(width: 45, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }).padding(3).background(Color("7")).clipShape(Circle()).padding()
                }
              
            }.navigationBarItems(leading: Image(systemName: "arrow.backward")).foregroundColor(Color("5")).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
