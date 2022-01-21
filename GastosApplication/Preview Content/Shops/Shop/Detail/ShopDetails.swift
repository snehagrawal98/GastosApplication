//
//  ShopDetails.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 14/01/22.
//

import SwiftUI

struct ShopDetails: View {
    var body: some View {
      HStack {
        Text("Food & Beverage")
          .font(.subheadline.weight(.bold))
          .frame(width: 0.44 * UIScreen.screenWidth, height: 0.046 * UIScreen.screenHeight )
          .background(Color("textGreen"))
          .foregroundColor(.white)
          .cornerRadius(14)
          .padding(.trailing, 4)

        HStack {
          Image(systemName: "checkmark.circle.fill")
            .foregroundColor(Color("textGreen"))

          Text("Delivery")
        }
        .foregroundColor(Color("textGreen"))
        .padding(.horizontal, 4)
        .font(.caption.weight(.bold))


        HStack {
          Image(systemName: "checkmark.circle.fill")
            .foregroundColor(Color("textGreen"))

          Text("Pickup")
        }
        .foregroundColor(Color("textGreen"))
        .padding(.horizontal, 4)
        .font(.caption.weight(.bold))
      }
    }
}

struct ShopDetails_Previews: PreviewProvider {
    static var previews: some View {
        ShopDetails()
    }
}
