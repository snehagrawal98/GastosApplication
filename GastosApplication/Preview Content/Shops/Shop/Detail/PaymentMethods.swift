//
//  PaymentMethods.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 14/01/22.
//

import SwiftUI

struct PaymentMethods: View {
    @State var selectedMethod = 1
  let totalHeight = 0.14 * UIScreen.screenHeight
  let totalWidth = 0.22 * UIScreen.screenWidth
    let numberOfMethods = 4
    let paymentMethods = ["PhonePe", "Paytm", "Google Pay", "BHIM"]
    var body: some View {
      ScrollView(.horizontal) {
        HStack(spacing: 15) {
          ForEach(0..<numberOfMethods) { method in
            Button(action: {
              // pay
            }, label: {
              PaymentMethod(paymentMethod: paymentMethods[method])
                .scaleEffect(method == selectedMethod ? 1.3 : 1)
                .frame(width: method == selectedMethod ? 112 : 82, height: method == selectedMethod ? 147 : 108, alignment: .center)
                .onTapGesture {
                  selectedMethod = method
                }
            })
          }
        }
      }
    }
}

struct PaymentMethods_Previews: PreviewProvider {
    static var previews: some View {
        PaymentMethods()
        //.background(Color.gray)
    }
}
