//
//  HomeTab.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI
import Firebase

struct HomeTab: View {

    @AppStorage("log_Status") var status = false
    @State var images = ["Sip & Bite", "Beauty & Care", "Style & Trends", "Health & Medico", "Daily Needs"]
    @State var adImages = ["PhonePeAd"]
    @EnvironmentObject var loginViewModel: LoginViewModel
    @EnvironmentObject var currentUser: CurrentUser

    var body: some View {
      NavigationView {
        VStack {
          HStack {
            Text("Hey \(loginViewModel.name)")//"Hey Sahgal!")
              .font(.title2.weight(.medium))
              .foregroundColor(Color("deepGreen"))
            Spacer()

            NavigationLink(
              destination: QrScanView()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true),
              label: {
                Image(systemName: "qrcode.viewfinder")
                  .font(.system(size: 20))
                  .foregroundColor(.black)
                  .padding(.trailing, 8)

              })

            NavigationLink(
              destination: Text("Notifications"),
              label: {
                Image(systemName: "bell.fill")
                  .font(.system(size: 20))
                  .foregroundColor(.black)

              })
              .navigationTitle("")
              .navigationBarHidden(true)
              .navigationBarBackButtonHidden(true)
          }
          .padding(.horizontal)

          NavigationLink(
            destination: UserProfile()
              .navigationBarHidden(true)
              .navigationBarBackButtonHidden(true),
            label: {
              ZStack {
                HStack(content: {
                  VStack(alignment: .leading, spacing: nil, content: {
                    Spacer()
                    Text(loginViewModel.name)
                      .foregroundColor(.white)
                      .font(.title2)
                      .fontWeight(.medium)
                      .padding(.leading)
                      .padding(.bottom)
                    Text("1234 5678 1234 5678")
                      .foregroundColor(.white)
                      .font(.body)
                      .padding(.leading)
                    Text("Valid Till: 12-6-2021")
                      .foregroundColor(.white)
                      .font(.subheadline)
                      .padding(.leading)
                      .padding(.bottom)
                  })
                  Spacer()

                })
                  .zIndex(5)

                Image("cardBackground")
                  .resizable()
                  .frame(width: Constants.sW - 24, height: Constants.sH * 0.3, alignment: .center)
                  .cornerRadius(10)
              }
              .frame(width: Constants.sW - 24, height: Constants.sH * 0.3, alignment: .center)

            })

          // Categories
          HStack(spacing: -10){
            ForEach(images, id: \.self) { image in
              NavigationLink(
                destination: CategoryView(title: image)
                  .navigationBarHidden(true)
                  .navigationBarBackButtonHidden(false),
                label: {
                  ZStack {
                    CategoryImage(image: image)
                  }
                })
            }
          }
          .padding()

          // Ad Images
          ScrollView(.horizontal) {
            HStack {
              ForEach(adImages, id: \.self) { adImage in
                Image(adImage)
                  .resizable()
                  .scaledToFit()
                  .frame(width: 0.71 * UIScreen.screenWidth, height: 0.142 * UIScreen.screenHeight, alignment: .center)
              }
            }
          }
          .padding(.horizontal)
          Spacer()
        }
        .onAppear(perform: self.readUserDetails)
      }
    }

  func readUserDetails() {
//    if loginViewModel.didShowMainViewOnce == 0 {
//      loginViewModel.didShowMainViewOnce += 1
//    } else if loginViewModel.didShowMainViewOnce == 1 {
      loginViewModel.readCurrentUser()
    //}
  }

}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
      HomeTab()
        .environmentObject(LoginViewModel())
        .environmentObject(CurrentUser())
    }
}

// Category View
struct CategoryImage: View {
  @State var image: String
  var body: some View {
    ZStack {
      Image(image)
        .resizable()
        .scaledToFill()
        .frame(width: 0.22 * UIScreen.screenWidth, height: 0.26 * UIScreen.screenHeight)

      VStack {
        Spacer()
        Text(image)
          .fontWeight(.semibold)
          .foregroundColor(.black.opacity(0.7))
          .frame(width: 0.4 * UIScreen.screenWidth, height: 16, alignment: .leading)
          .rotationEffect(.degrees(-90))
          .frame(width: 16, height: 0.045 * UIScreen.screenHeight, alignment: .bottom)
        Spacer()
      }
    }
    .frame(width: 0.22 * UIScreen.screenWidth, height: 0.26 * UIScreen.screenHeight)
  }
}
