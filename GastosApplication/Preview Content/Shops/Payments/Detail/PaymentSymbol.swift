//
//  PaymentSymbol.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 12/01/22.
//

import SwiftUI

struct PaymentSymbol: View {
  @State var shapeColor: Color
    @State var paymentSymbol: String

    var body: some View {
      ZStack {
        Circle()
          .foregroundColor(shapeColor)
          .frame(width: 76, height: 76, alignment: .center)
        Circle()
          .foregroundColor(shapeColor.opacity(0.6))
          .frame(width: 90, height: 90, alignment: .center)

        Image(systemName: paymentSymbol)
          .resizable()
          .scaledToFit()
          .frame(width: 32, height: 32, alignment: .center)
          .foregroundColor(.white)
        }
    }
}

struct PaymentSymbol_Previews: PreviewProvider {
    static var previews: some View {
      PaymentSymbol(shapeColor: .red, paymentSymbol: "checkmark")
    }
}
