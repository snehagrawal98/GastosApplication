//
//  PaymentMethod.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 14/01/22.
//

import SwiftUI

struct PaymentMethod: View {
  @State var paymentMethod: String
  let totalHeight = 0.14 * UIScreen.screenHeight
  let totalWidth = 0.22 * UIScreen.screenWidth
    var body: some View {
      VStack(spacing: 0) {
        ZStack {
          Rectangle()
            .frame(width: 82, height: 59, alignment: .center)
            .foregroundColor(.white)
            .cornerRadius(10, corners: [.topLeft, .topRight])
            .shadow(radius: 5)

          Image(paymentMethod)
            .resizable()
            .frame(width: 45, height: 45, alignment: .center)
        }

        ZStack {
          Rectangle()
            .frame(width: 82, height: 49)
            .foregroundColor(Color(paymentMethod))
            .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
            .shadow(radius: 5)

          Text(paymentMethod)
            .font(.system(size: 12).weight(.medium))
            .foregroundColor(.white)
        }
      }
      .frame(width: 82, height: 108)
    }
}

struct PaymentMethod_Previews: PreviewProvider {
    static var previews: some View {
      PaymentMethod(paymentMethod: "PhonePe")
        //.background(Color.gray)
    }
}
