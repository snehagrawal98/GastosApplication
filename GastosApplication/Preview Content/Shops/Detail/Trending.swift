//
//  Trending.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 11/01/22.
//

import SwiftUI

struct Trending: View {
    var body: some View {
      VStack(alignment: .leading) {
        Text("Trending")
          .title3TextStyle()
          .padding(.horizontal)
          .padding(.vertical, 8)

        ScrollView {
          VStack(alignment: .leading) {
            ForEach(1..<10) {_ in
              TrendingItem(itemImage: "foodItem", itemName: "Meat Pizza with Chicken", itemPlace: "Beyti Restaurant", itemRating: 4.8, itemRatings: 233)
            }
          } //: VSTACK
        } //: SCROLL
      } //: VSTACK
    }
}

struct Trending_Previews: PreviewProvider {
    static var previews: some View {
        Trending()
    }
}

// Trending Item
struct TrendingItem: View {
  var itemImage: String
  var itemName: String
  var itemPlace: String
  var itemRating: Double
  var itemRatings: Int

    var body: some View {
        HStack {
          Image(itemImage)

          VStack(alignment: .leading) {
            VStack(alignment: .leading) {
              Text(itemName)
                .normalTextStyle()
                .padding(.bottom, 1)

              Text(itemPlace)
                .subTextStyle()
                .padding(.bottom, 1)
            } //: VSTACK

            HStack {
              Image(systemName: "star.fill")
                .foregroundColor(.orange)

              Text("\(itemRating, specifier: "%g")")
                .subTextNumberStyle()

              Text("(\(itemRatings) ratings)")
                .subTextStyle()
            } //: HSTACK
          } //: VSTACK
          .frame(width: 250, alignment: .leading)
      } //: HSTACK
      .padding(.horizontal)
      .padding(.vertical, 8)
      .frame(width: UIScreen.screenWidth, height: 104, alignment: .leading)
  }
}
