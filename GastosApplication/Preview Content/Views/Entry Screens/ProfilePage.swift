//
//  ProfilePage.swift
//  Gastos_user_mvp1
//
//  Created by mnameit on 18/10/21.
//

import SwiftUI

struct ProfilePage: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var emailAddress = ""
    @State private var code = ""
    @State var dob = Date()
    @State var gender = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var loginViewModel: LoginViewModel
    @EnvironmentObject var currentUser: CurrentUser

    var body: some View {
        NavigationView{
            VStack(spacing: 15){
              // Navigation bar
              HStack {
                Button(action: { dismiss() }, label: {
                  Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 25, height: 15)
                    .foregroundColor(Color("deepGreen"))
                    .padding()
                })
                Spacer()
                Text("Personal Details").foregroundColor(Color("deepGreen")).font(.system(size: 25)).fontWeight(.medium).padding(.vertical, 30)
                Spacer()
                Spacer()
              }
              .padding(.top, 0.02 * UIScreen.screenHeight)

              // entering user details
              VStack {
                Button(action: { }, label: {
                  Image(systemName: "person.crop.circle.fill.badge.plus").font(.system(size: 80)).foregroundColor(Color("6"))
                  })

                  // name
                  HStack {
                      TextField("First Name", text: $firstName).onTapGesture {
                          self.hideKeyboard()
                      }
                      .padding()
                      .frame(width: 0.426 * UIScreen.screenWidth, height: 0.056 * UIScreen.screenHeight)
                      .background(
                        RoundedRectangle(cornerRadius: 10)
                          .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
                      )
                      Spacer()
                      TextField("Last Name", text: $lastName).onTapGesture {
                          self.hideKeyboard()
                      }
                      .padding()
                      .frame(width: 0.426 * UIScreen.screenWidth, height: 0.056 * UIScreen.screenHeight)
                      .background(
                        RoundedRectangle(cornerRadius: 10)
                          .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
                      )
                  }
                  .padding(.horizontal)
                  .padding(.vertical, 8)

                  // email address
                  TextField("E-Mail address", text: $emailAddress).onTapGesture {
                      self.hideKeyboard()
                  }
                  .padding()
                  .frame(width: UIScreen.screenWidth - 32, height: 0.056 * UIScreen.screenHeight)
                  .background(
                    RoundedRectangle(cornerRadius: 10)
                      .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
                  )

                  // birth date
                  HStack{
                    Text("Birth Date").foregroundColor(Color("5")).font(.system(size: 19))
                    Spacer()
                    DatePicker("", selection: $dob, displayedComponents: .date)
                      .colorInvert()
                      .colorMultiply(Color.blue)
                  }
                  .padding(.horizontal, 24)
                  .padding(.vertical, 8)

                  // gender
                  HStack(spacing:10) {
                      Text("Gender").foregroundColor(Color("5")).font(.system(size: 19))
                     Spacer()
                    Button(action: {
                      gender = "Female"
                    }, label: {
                          HStack{
                          Image("female")
                              Text("Female")
                              .font(.body.weight(.semibold))
                              .foregroundColor(gender == "Female" ? Color("textGreen") : Color.black)
                          }
                      })
                      .frame(width: 0.3 * UIScreen.screenWidth, height: 0.055 * UIScreen.screenHeight)
                      .background(
                        RoundedRectangle(cornerRadius: 10)
                          .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
                          //.foregroundColor(.white)
                      )
                      //.shadow(color: Color("gray"), radius: 9, x: 0, y: 0)

                    Button(action: {
                      gender = "Male"
                    }, label: {
                          HStack{
                          Image("male")
                              Text("Male")
                              .font(.body.weight(.semibold))
                              .foregroundColor(gender == "Male" ? Color("textGreen") : Color.black)
                          }
                      })
                      .frame(width: 0.3 * UIScreen.screenWidth, height: 0.055 * UIScreen.screenHeight)
                      .background(
                        RoundedRectangle(cornerRadius: 10)
                          .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
                          //.shadow(color: Color.gray, radius: 5, x: 0, y: 0)
                      )


                  }
                  .padding(.horizontal, 24)
                  .padding(.vertical, 8)
                  .padding(.bottom)

                // referral code
                  HStack {
                      Text("Have a referral code?")
                      .font(.body.weight(.semibold))
                      .foregroundColor(Color("deepGreen"))
                  Spacer()
                  }
                  .padding(.horizontal, 24)

                  HStack {
                    TextField("Enter Code", text: $code).onTapGesture {
                        self.hideKeyboard()
                    }
                      .padding()
                      .frame(width: 0.58 * UIScreen.screenWidth)
                    Button(action: {}, label: {
                      Text("Validate")
                        .padding(4)
                        .frame(width: 0.258 * UIScreen.screenWidth, height: 0.042 * UIScreen.screenHeight)
                        .background(Color("textGreen"))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    })
                  }
                  .frame(width: 0.91 * UIScreen.screenWidth, height: 0.06 * UIScreen.screenHeight)
                  .background(
                    RoundedRectangle(cornerRadius: 10)
                      .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
                  )
              }


              Spacer()
              // forward button
              HStack{
                Spacer()
                NavigationLink(destination:
                  VerifiedSuccessfully()
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true), isActive: $loginViewModel.didEnterUserDetails) {
                  Text("")
                    .hidden()
                }

                Button(action: {
                    self.didEnterAllData()
                  }, label: {
                    Image(systemName: "chevron.right").font(.system(size: 20)).foregroundColor(.white).frame(width: 50, height: 50, alignment: .center)
                  }).padding(3).background(Color("textGreen")).clipShape(Circle()).padding()
              }
              Spacer()
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }

    func didEnterAllData() {
      let formatter = DateFormatter()
      formatter.dateFormat = "MMM d, y"
      let dob = formatter.string(from: self.dob)
      print(dob)
      if ((!firstName.isEmpty || !lastName.isEmpty) && !emailAddress.isEmpty && !gender.isEmpty && !dob.isEmpty) {
        loginViewModel.dob = dob
        loginViewModel.email = emailAddress
        loginViewModel.gender = gender
        loginViewModel.name = firstName + " " + lastName

        currentUser.dob = loginViewModel.dob
        currentUser.email = loginViewModel.email
        currentUser.gender = loginViewModel.gender
        currentUser.name = loginViewModel.name
        print("ran till 202 in profile page")
        loginViewModel.registerUserDetails()
      }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
      ProfilePage()
        .environmentObject(LoginViewModel())
        .environmentObject(CurrentUser())
    }
}

