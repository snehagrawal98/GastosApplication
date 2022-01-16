//
//  NearbyShop.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 11/01/22.
//

import SwiftUI

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

struct NearbyShop_Previews: PreviewProvider {
    static var previews: some View {
      NearbyShop(shopImage: "shop", shopName: "Shop Name")
    }
}
