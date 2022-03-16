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

// Payment Method
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
            .scaledToFit()
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
      .scaledToFit()
    }
}

// Payment Methods
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


