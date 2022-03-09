//
//  EliteMarket.swift
//  GastosApplication
//
//  Created by Sai Kumar Kasireddi's MacBook on 09/03/22.
//

import SwiftUI

struct EliteMarket: View {
    @State var index = 0

    var body: some View {
      NavigationView {
        VStack {
          // Nav bar
          HStack {
            Text("Expenses")
              .font(.title2.weight(.medium))
              .foregroundColor(Color("deepGreen"))
              .padding(.horizontal)
            Spacer()
          }

          // Elite Market Categories
          HStack {
            Text("All")
              .font(.subheadline)
              .foregroundColor(self.index == 0 ? .white : Color("textGreen"))
              .padding(.vertical, 10)
              .padding(.horizontal, 10)
              .background(Color("textGreen").opacity(self.index == 0 ? 1 : 0 ))
              .cornerRadius(10)
              .onTapGesture {
                withAnimation(.easeOut) {
                  self.index = 0
                }
              }

            Spacer()

            Text("Clubs")
              .font(.subheadline)
              .foregroundColor(self.index == 1 ? .white : Color("textGreen"))
              .padding(.vertical, 10)
              .padding(.horizontal, 6)
              .background(Color("textGreen").opacity(self.index == 1 ? 1 : 0 ))
              .cornerRadius(10)
              .onTapGesture {
                withAnimation(.easeOut) {
                  self.index = 1
                }
              }

            Spacer()

            Text("Pubs")
              .font(.subheadline)
              .foregroundColor(self.index == 2 ? .white : Color("textGreen"))
              .padding(.vertical, 10)
              .padding(.horizontal, 6)
              .background(Color("textGreen").opacity(self.index == 2 ? 1 : 0 ))
              .cornerRadius(10)
              .onTapGesture {
                withAnimation(.easeOut) {
                  self.index = 2
                }
              }

            Spacer()

            Text("Lounges")
              .font(.subheadline)
              .foregroundColor(self.index == 3 ? .white : Color("textGreen"))
              .padding(.vertical, 10)
              .padding(.horizontal, 6)
              .background(Color("textGreen").opacity(self.index == 3 ? 1 : 0 ))
              .cornerRadius(10)
              .onTapGesture {
                withAnimation(.easeOut) {
                  self.index = 3
                }
              }

            Text("Restaurants")
              .font(.subheadline)
              .foregroundColor(self.index == 4 ? .white : Color("textGreen"))
              .padding(.vertical, 10)
              .padding(.horizontal, 6)
              .background(Color("textGreen").opacity(self.index == 4 ? 1 : 0 ))
              .cornerRadius(10)
              .onTapGesture {
                withAnimation(.easeOut) {
                  self.index = 4
                }
              }
          } //: HSTACK
          .padding(.horizontal, 10)
          .padding(.vertical, 8)

          // Trending 
          HStack {
            Text("Trending")
              .font(.headline.weight(.medium))
              .foregroundColor(Color("deepGreen"))
              .padding(.horizontal)
            Spacer()
          }

          ScrollView(.horizontal) {
            HStack {
              ForEach(1..<5, id: \.self) { _ in
                Image("EliteMarketTrendingImg")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 0.424 * UIScreen.screenWidth, height: 0.116 * UIScreen.screenHeight)
                  .padding(.horizontal, 2)
              }
            }
          }
          .padding(.horizontal, 12)
          .padding(.bottom, 12)

          ZStack {
            Image("EliteMarketBlurImg")
              .resizable()
              .scaledToFit()
              .frame(width: UIScreen.screenWidth, height: 0.568 * UIScreen.screenHeight)

            Image("EliteMarketComingSoon")
              .resizable()
              .scaledToFit()
              .frame(width: 0.746 * UIScreen.screenWidth, height: 0.226 * UIScreen.screenHeight)
          }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
      }
    }
}

struct EliteMarket_Previews: PreviewProvider {
    static var previews: some View {
        EliteMarket()
    }
}
