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
      ScrollView() {
        VStack {
          Text("Local Market")
            .title2TextStyle()
            .padding(.horizontal)
            .frame(width: UIScreen.screenWidth, alignment: .leading)

          // Local Market Categories
          HStack(spacing: 10) {
            Text("All")
              .font(.system(size: 14))
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

            Text("Food & Beverage")
              .font(.system(size: 14))
              .foregroundColor(self.index == 1 ? .white : Color("5"))
              .padding(.vertical, 10)
              .padding(.horizontal, 10)
              .background(Color("5").opacity(self.index == 1 ? 1 : 0 ))
              .cornerRadius(10)
              .onTapGesture {
                withAnimation(.easeOut) {
                  self.index = 1
                }
              }

            Text("Fashion")
              .font(.system(size: 14))
              .foregroundColor(self.index == 2 ? .white : Color("5"))
              .padding(.vertical, 10)
              .padding(.horizontal, 10)
              .background(Color("5").opacity(self.index == 2 ? 1 : 0 ))
              .cornerRadius(10)
              .onTapGesture {
                withAnimation(.easeOut) {
                  self.index = 2
                }
              }

            Text("Salon & Spa")
              .font(.system(size: 14))
              .foregroundColor(self.index == 3 ? .white : Color("5"))
              .padding(.vertical, 10)
              .padding(.horizontal, 10)
              .background(Color("5").opacity(self.index == 3 ? 1 : 0 ))
              .cornerRadius(10)
              .onTapGesture {
                withAnimation(.easeOut) {
                  self.index = 3
                }
              }
          } //: HSTACK
          .padding(.horizontal, 8)
          .padding(.vertical, 8)

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
          }
        } else if index == 2 {
          VStack {
            // Nearby
            NearbyFashion()

            // Trending
            TrendingFashion()
          }
        } else if index == 3 {
          VStack {
            // Nearby
            NearbySalon()

            // Trending
            TrendingSalon()
          }
        }
        } //: VSTACK
      } //: SCROLL
    }
}

struct LocalMarket_Previews: PreviewProvider {
    static var previews: some View {
        LocalMarket()
    }
}
