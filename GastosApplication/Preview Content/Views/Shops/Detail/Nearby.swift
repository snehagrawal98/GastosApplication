//
//  Nearby.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 11/01/22.
//

import SwiftUI

struct Nearby: View {
    var shopImage = "shop"
    var shopName = "Shop Name"

    var body: some View {
      VStack(alignment: .leading) {
        Text("Nearby")
        .title3TextStyle()


        ScrollView(.horizontal, showsIndicators: false, content: {
          HStack {
            ForEach(1..<6) {_ in
              NearbyShop(shopImage: shopImage, shopName: shopName)
            }
          } //: HSTACK
        }) //: SCROLL
      } //: VSTACK
      .padding(.horizontal)
      .padding(.vertical, 8)
    }
}

struct Nearby_Previews: PreviewProvider {
    static var previews: some View {
        Nearby()
    }
}

// Nearby Shop
struct NearbyShop: View {
  var shopImage: String
  var shopName: String

    var body: some View {
      VStack(alignment: .leading) {
        Image(shopImage)
          .resizable()
          .frame(width: 141, height: 70)

        Text(shopName)
          .title4TextStyle()
      } //: VSTACK
    }
}
