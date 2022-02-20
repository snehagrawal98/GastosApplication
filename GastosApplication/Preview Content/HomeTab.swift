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
              destination: UserProfile()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true),
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
                    Text("GASTOS")
                      .foregroundColor(.white)
                      .fontWeight(.semibold)
                      .font(.largeTitle)
                      .padding(.leading)
                      .padding(.top)
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
                  VStack {

                    Spacer()
                    Text("LPI")
                      .foregroundColor(.white)
                      .fontWeight(.bold)
                      .italic()
                      .font(.title)
                      .padding(.trailing)
                      .padding(.bottom)
                  }
                })
                  .zIndex(5)

                VStack {
                  HStack {
                    Spacer()
                    Image("GastosMark")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 0.402 * UIScreen.screenWidth, height: UIScreen.screenHeight * 0.22)
                  }
                  Spacer()
                }
                .zIndex(5)

                LinearGradient(gradient: Gradient(colors: [Color.black, Color("deepGreen")]), startPoint: .leading, endPoint: .topTrailing)
                  .cornerRadius(10)
              }
              .frame(width: Constants.sW - 24, height: Constants.sH * 0.3, alignment: .center)

            })
            .navigationTitle("")
            .navigationBarHidden(true)

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
          .navigationBarHidden(true)
          .navigationBarBackButtonHidden(true)
      }
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
