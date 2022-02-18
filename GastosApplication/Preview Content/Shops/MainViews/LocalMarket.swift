//
//  LocalMarket.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 11/01/22.
//

import SwiftUI

struct LocalMarket: View {
    @State var index = 0

    var body: some View {
        NavigationView {
      ScrollView() {
        VStack {
          Text("Local Market")
            .title2TextStyle()
            .padding(.horizontal)
            .frame(width: UIScreen.screenWidth, alignment: .leading)

          // Local Market Categories
          HStack() {
            Text("All")
              .font(.subheadline)
              .foregroundColor(self.index == 0 ? .white : Color("5"))
              .padding(.vertical, 10)
              .padding(.horizontal, 10)
              .background(Color("5").opacity(self.index == 0 ? 1 : 0 ))
              .cornerRadius(10)
              .onTapGesture {
                withAnimation(.easeOut) {
                  self.index = 0
                }
              }

            Spacer()

            Text("Food & Beverage")
              .font(.subheadline)
              .foregroundColor(self.index == 1 ? .white : Color("5"))
              .padding(.vertical, 10)
              .padding(.horizontal, 6)
              .background(Color("5").opacity(self.index == 1 ? 1 : 0 ))
              .cornerRadius(10)
              .onTapGesture {
                withAnimation(.easeOut) {
                  self.index = 1
                }
              }

            Spacer()

            Text("Fashion")
              .font(.subheadline)
              .foregroundColor(self.index == 2 ? .white : Color("5"))
              .padding(.vertical, 10)
              .padding(.horizontal, 6)
              .background(Color("5").opacity(self.index == 2 ? 1 : 0 ))
              .cornerRadius(10)
              .onTapGesture {
                withAnimation(.easeOut) {
                  self.index = 2
                }
              }

            Spacer()

            Text("Salon & Spa")
              .font(.subheadline)
              .foregroundColor(self.index == 3 ? .white : Color("5"))
              .padding(.vertical, 10)
              .padding(.horizontal, 6)
              .background(Color("5").opacity(self.index == 3 ? 1 : 0 ))
              .cornerRadius(10)
              .onTapGesture {
                withAnimation(.easeOut) {
                  self.index = 3
                }
              }
          } //: HSTACK
          .padding(.horizontal, 10)
          .padding(.vertical, 8)

        // Nearby & Trending
        VStack {
          if index == 0 {
            VStack {
              // Nearby
              Nearby()

              // Trending
              Trending()
            }
          } else if index == 1 {
            VStack {
              // Nearby
              NearbyFood()

              // Trending
              TrendingFood()
                    .frame(width: Constants.sW)
            }
          } else if index == 2 {
            VStack {
              // Nearby
              NearbyFashion()

              // Trending
              TrendingFashion()
                    .frame(width: Constants.sW)
            }
            .frame(width: Constants.sW)

          } else if index == 3 {
            VStack {
              // Nearby
              NearbySalon()

              // Trending
              TrendingSalon()
                    .frame(width: Constants.sW)

            }
          }
        } //: VSTACK
        .frame(height: Constants.sH)
        } //: VSTACK
      } //: SCROLL
      .navigationBarHidden(true)
      .navigationBarTitle("")
        }
    }
}

struct LocalMarket_Previews: PreviewProvider {
    static var previews: some View {
      LocalMarket()
        //.previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))

      LocalMarket()
        .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
    }
}
