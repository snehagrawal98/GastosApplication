//
//  UserInformationScreen.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct UserInformationScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var email: String = ""
    
    @State private var edittingMode: Bool = false
    
    var body: some View {

      NavigationView {
        VStack {
          // Profile image card
          ZStack {
            Group {
              Image("UserInfoProfile")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.screenWidth, height: 0.312 * UIScreen.screenHeight)
                .blur(radius: 10)
                .mask(Rectangle()
                        .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight * 0.13, alignment: .bottom)
                        .offset(y:UIScreen.screenHeight * 0.14)
              )

              Image("UserInfoProfile")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.screenWidth, height: 0.172 * UIScreen.screenHeight)
                .zIndex(-200)
                .ignoresSafeArea(.all)

              Rectangle()
                .frame(width: UIScreen.screenWidth, height: 0.312 * UIScreen.screenHeight)
                .foregroundColor(.pink.opacity(0.09))
                .ignoresSafeArea(.all)
                .zIndex(-201)
            }

            VStack {
              HStack {
                Button(action: { dismiss() }, label: {
                  Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 25, height: 12.5)
                    .foregroundColor(.black)
                })

                Spacer()

                Image(systemName: "pencil")
                  .resizable()
                  .frame(width: 25, height: 25)
                  .foregroundColor(.white)
              }
              .padding()

              Spacer()

              HStack {
                VStack(alignment: .leading) {
                  Text("Taruna Singh")
                    .font(.title3.weight(.semibold))

                  Text("Xxxxxxxxx4545")
                    .font(.subheadline.weight(.semibold))
                }

                Spacer()

                Text("12/24")
                  .font(.subheadline.weight(.semibold))
              }
              .foregroundColor(.white)
              .padding()
              .frame(width: UIScreen.screenWidth, height: 0.086 * UIScreen.screenHeight)
            }
            .frame(width: UIScreen.screenWidth, height: 0.312 * UIScreen.screenHeight)
          }
          .padding(.bottom, 24)

          // Personal Details
          Group {
            VStack(alignment: .leading) {
              Text("Email Address")
                .font(.headline.weight(.semibold))
                .padding(.horizontal)

              Text("tarunsingh@gmail.com")
                .font(.subheadline.weight(.medium))
                .padding(.horizontal)
                .frame(width: 0.883 * UIScreen.screenWidth, height: 0.043 * UIScreen.screenHeight, alignment: .leading)
                .background(
                  RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.white)
                    .shadow(color: .gray.opacity(0.3), radius: 5)
                )
            }
            .frame(width: 0.883 * UIScreen.screenWidth, height: 0.1 * UIScreen.screenHeight, alignment: .leading)
            .padding(.bottom)

            HStack {
              VStack(alignment: .leading) {
                Text("Birth Date")
                  .font(.headline.weight(.semibold))
                  .padding(.horizontal)

                Text("Oct 17, 1964")
                  .font(.subheadline.weight(.medium))
                  .font(.subheadline.weight(.medium))
                  .padding(.horizontal)
                  .frame(width: 0.341 * UIScreen.screenWidth, height: 0.043 * UIScreen.screenHeight, alignment: .leading)
                  .background(
                    RoundedRectangle(cornerRadius: 5)
                      .foregroundColor(.white)
                      .shadow(color: .gray.opacity(0.3), radius: 5)
                  )
              }

              Spacer()

              VStack {
                Text("Gender")
                  .font(.headline.weight(.semibold))
                  .offset(x: -20)

                Text("Female")
                  .font(.subheadline.weight(.medium))
                  .padding(.horizontal)
                  .frame(width: 0.341 * UIScreen.screenWidth, height: 0.043 * UIScreen.screenHeight, alignment: .leading)
                  .background(
                    RoundedRectangle(cornerRadius: 5)
                      .foregroundColor(.white)
                      .shadow(color: .gray.opacity(0.3), radius: 5)
                  )
              }
            }
            .frame(width: 0.882 * UIScreen.screenWidth)
            .padding(.bottom, 64)

            VStack(alignment: .leading) {
              Text("Contact Number")
                .font(.headline.weight(.semibold))
                .padding(.horizontal)

              Text("+91 27388 43932")
                .font(.subheadline.weight(.medium))
                .padding(.horizontal)
                .frame(width: 0.883 * UIScreen.screenWidth, height: 0.043 * UIScreen.screenHeight, alignment: .leading)
                .background(
                  RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.white)
                    .shadow(color: .gray.opacity(0.3), radius: 5)
                )
            }
            .frame(width: 0.883 * UIScreen.screenWidth, height: 0.1 * UIScreen.screenHeight, alignment: .leading)
          }
          .foregroundColor(Color("deepGreen"))

          Spacer()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
      }
      .navigationBarHidden(true)
      .navigationBarBackButtonHidden(true)
    }
}

struct UserInformationScreen_Previews: PreviewProvider {
    static var previews: some View {
        UserInformationScreen()
    }
}
