//
//  Payment.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 14/01/22.
//

import SwiftUI

struct Payment: View {
  @State var shopName: String
  @State var shopAddress: String
  @State var discount: Double
    var body: some View {
      VStack {
        ZStack {
          VStack {
            PaymentTopView(shopName: "Sai-Mart", shopAddress: "43-BD, Delhi")

            Spacer()
            Spacer()
          }
          .frame(height: UIScreen.screenHeight, alignment: .top)

          VStack {
            Spacer()

            PaymentBottomView()
              .padding(.bottom)
          }

        Spacer()
      }
    }
    }
  
}

struct Payment_Previews: PreviewProvider {
    static var previews: some View {
      Payment(shopName: "Sai-Mart", shopAddress: "43-BD, Delhi", discount: 10.0)

    }
}
