//
//  UserProfile.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI
import Firebase

struct UserProfile: View {
    
    @Environment(\.dismiss) var dismiss
    @AppStorage("log_Status") var status = false
    @EnvironmentObject var loginViewModel: LoginViewModel

    @State var savings = "0"
    @State var coinsEarned = "0"
    @State var isShowingLogoutAlert = false
    
    var body: some View {
        
        NavigationView {
          ZStack {
            VStack {
              HStack {
                Button(action: {
                  dismiss()
              }, label: {
                  Image(systemName: "arrow.left")
                      .font(.title)
                      .foregroundColor(.black)
                      .padding(.leading)
                      .padding(.top, 8)
              })
              .navigationBarHidden(true)
              .navigationBarBackButtonHidden(true)
                  Spacer()
              }

              ZStack {
                  RoundedRectangle(cornerRadius: 10)
                  .frame(width: 0.848 * UIScreen.screenWidth, height: 0.24 * UIScreen.screenHeight)
                  .foregroundColor(.black.opacity(0.55))
                VStack {
                  // Navigates to UserInformationScreen
                  NavigationLink(destination: {
                    UserInformationScreen()
                      .navigationBarHidden(true)
                      .navigationBarBackButtonHidden(true)
                  }, label: {
                    Image("foodItem")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 0.22 * UIScreen.screenWidth, height: 0.098 * UIScreen.screenHeight, alignment: .center)
                        .clipShape(Circle())
                        .foregroundColor(Color(.systemGreen))
                  })

                  Group {
                    Text(loginViewModel.name)
                        .font(.title2.weight(.semibold))
                        .foregroundColor(.white)

                      Text("Inactive Member")
                        .font(.subheadline.weight(.semibold))
                        .foregroundColor(.white.opacity(0.6))
                  }

                  Spacer()

                  HStack {
                    VStack {
                      Text(savings)
                          .font(.title2.weight(.semibold))
                          .foregroundColor(.white)

                      Text("Savings")
                          .font(.subheadline.weight(.semibold))
                          .foregroundColor(.white.opacity(0.8))
                      }
                      .padding(.leading, 20)

                  Spacer()
                  VStack(spacing: -6) {
                    ForEach(1..<5) { i in
                        Text("|")
                          .foregroundColor(.white)
                      }
                  }
                  Spacer()

                    NavigationLink(destination: {
                      Gullak()
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                    }, label: {
                      VStack {
                        Text(coinsEarned)
                            .font(.title2.weight(.semibold))
                            .foregroundColor(.yellow.opacity(0.8))

                        Text("Coins Earned")
                            .font(.subheadline.weight(.semibold))
                            .foregroundColor(.white.opacity(0.8))
                        }
                    })
                  } //: HSTACK
                  .padding(.horizontal)
                  .padding(.bottom, 4)

                  Spacer()
                  Spacer()
                  Spacer()
              } //: VSTACK
              .padding(.trailing)
              .foregroundColor(.primary)
              .frame(width: 0.848 * UIScreen.screenWidth, height: 0.33 * UIScreen.screenHeight)
          }
          .padding(.horizontal)

              VStack(alignment: .leading) {
                // Account Status
                NavigationLink(destination: {
                  ProfileActivationPlans()
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
                }, label: {
                  HStack {
                    VStack {
                      Text("Account Status")
                        .font(.body.weight(.semibold))
                        .foregroundColor(Color("deepGreen"))

                      Text("Inactive")
                        .font(.subheadline.weight(.semibold))
                        .foregroundColor(.orange.opacity(0.7))
                    }

                    Spacer()

                    Text("Activate Now")
                      .font(.subheadline.weight(.semibold))
                      .foregroundColor(Color("textGreen"))
                  }
                  .padding()
                  .frame(width: 0.848 * UIScreen.screenWidth, height: 0.088 * UIScreen.screenHeight)
                  .background(
                    RoundedRectangle(cornerRadius: 10)
                      .stroke(.gray, lineWidth: 0.2)
                      .shadow(radius: 5)
                  )
                  .padding(.horizontal)
                  .padding(.vertical, 8)

                })

                // Expense Manager
                HStack() {
                  Image(systemName: "chart.bar.fill")
                    .resizable()
                    .padding(5)
                    .foregroundColor(.white)
                    .background(Color("textGreen"))
                    .frame(width: 20, height: 20)
                    .cornerRadius(4)
                    .padding(.trailing, 8)

                  Text("Expense Manager")

                  Spacer()
                }
                .foregroundColor(Color("deepGreen"))
                .padding()
                .frame(width: 0.848 * UIScreen.screenWidth, height: 0.088 * UIScreen.screenHeight)
                .background(
                  RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray, lineWidth: 0.2)
                    .shadow(radius: 5)
                )
                .padding(.horizontal)
                .padding(.bottom, 8)

                // Refer & Earn
                NavigationLink(destination: {
                  ReferAndEarn()
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
                }, label: {
                  HStack {
                    Image("ShareSymbol")
                      .resizable()
                      .padding(2)
                      .foregroundColor(Color("textGreen"))
                      .frame(width: 20, height: 20)
                      .cornerRadius(4)
                      .padding(.trailing, 8)

                    Text("Refer & Earn")

                    Spacer()
                  }
                  .foregroundColor(Color("deepGreen"))
                  .padding()
                  .frame(width: 0.848 * UIScreen.screenWidth, height: 0.088 * UIScreen.screenHeight)
                  .background(
                    RoundedRectangle(cornerRadius: 10)
                      .stroke(.gray, lineWidth: 0.2)
                      .shadow(radius: 5)
                  )
                  .padding(.horizontal)
                  .padding(.bottom, 8)
                })
              } //:  VSTACK

              // Bottom part
              VStack(alignment: .leading, spacing: 5) {

                NavigationLink(destination: Text("Rate Us"), label: {
                  Text("Rate Us And Feedback")
                    .font(.body.weight(.semibold))
                    .foregroundColor(Color("deepGreen"))
                })

                  Link(destination: URL(string: "https://gastos-termsofservice.netlify.app")!) {
                  Text("Terms And Conditions")
                    .font(.body.weight(.semibold))
                    .foregroundColor(Color("deepGreen"))
                }

                  Link(destination: URL(string: "https://gastos-aboutus.netlify.app")!) {
                  Text("About Us")
                    .font(.body.weight(.semibold))
                    .foregroundColor(Color("deepGreen"))
                }

                Spacer()

                Button(action: {
                  isShowingLogoutAlert = true
                    }, label: {
                      Text("Logout")
                        .font(.body.weight(.bold))
                        .foregroundColor(Color("deepGreen"))
                        .padding(.bottom)
                    })
              } //: VSTACK
              .frame(width: 0.765 * UIScreen.screenWidth, alignment: .leading)

              Spacer()
            }

            // Showing Logout Alert
            if isShowingLogoutAlert {
              LogoutAlert(show: $isShowingLogoutAlert)
            }
          }
          .navigationBarHidden(true)
          .navigationBarBackButtonHidden(true)
      }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
        .environmentObject(LoginViewModel())
    }
}

// UserProfileCard
struct UserProfileCard: View {
  @State var savings = "0"
  @State var coinsEarned = "0"
  var body: some View {
    ZStack {
        RoundedRectangle(cornerRadius: 10)
        .frame(width: 0.848 * UIScreen.screenWidth, height: 0.24 * UIScreen.screenHeight)
        .foregroundColor(.black.opacity(0.55))
      VStack {
          Image("foodItem")
              .resizable()
              .scaledToFit()
              .frame(width: 0.22 * UIScreen.screenWidth, height: 0.098 * UIScreen.screenHeight, alignment: .center)
              .clipShape(Circle())
              .foregroundColor(Color(.systemGreen))

        Group {
                Text("ElizaBeth Williams")
                .font(.title2.weight(.semibold))
                .foregroundColor(.white)

                Text("Inactive Member")
                .font(.subheadline.weight(.semibold))
                .foregroundColor(.white.opacity(0.6))
        }

        Spacer()

        HStack {
          VStack {
            Text(savings)
                .font(.title2.weight(.semibold))
                .foregroundColor(.white)

            Text("Savings")
                .font(.subheadline.weight(.semibold))
                .foregroundColor(.white.opacity(0.8))
            }
            .padding(.leading, 20)

        Spacer()
        VStack(spacing: -6) {
          ForEach(1..<5) { i in
              Text("|")
                .foregroundColor(.white)
            }
        }
        Spacer()

        VStack {
          Text(coinsEarned)
              .font(.title2.weight(.semibold))
              .foregroundColor(.yellow.opacity(0.8))

          Text("Coins Earned")
              .font(.subheadline.weight(.semibold))
              .foregroundColor(.white.opacity(0.8))
          }
        } //: HSTACK
        .padding(.horizontal)
        .padding(.bottom, 4)

        Spacer()
        Spacer()
        Spacer()
    } //: VSTACK
    .padding(.trailing)
    .foregroundColor(.primary)
    .frame(width: 0.848 * UIScreen.screenWidth, height: 0.33 * UIScreen.screenHeight)
}
.padding(.horizontal)
  }
}
