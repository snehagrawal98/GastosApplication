//
//  PaymentTopView.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 14/01/22.
//

import SwiftUI

struct PaymentTopView: View {
  @State var shopName: String
  @State var shopAddress: String

    var body: some View {
      ZStack {
        LinearGradient(gradient: Gradient(colors: [Color("deepGreen"), Color("textGreen")]), startPoint: .leading, endPoint: .trailing)
          .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight / 3, alignment: .top)
          .foregroundColor(Color("deepGreen"))
          .edgesIgnoringSafeArea(.all)

        VStack(alignment: .leading) {
          HStack {
            Button(action: {
              ShopView()
            }, label: {
              Image(systemName: "arrow.left")
                .resizable()
                .frame(width: 22.5, height: 15)
                .foregroundColor(.white)
            })
              .padding()
              .padding(.top, 24)

            Spacer()
          }

          Text(shopName)
            .font(.system(size: 30).weight(.bold))
            .foregroundColor(.white)
            .padding(.horizontal)
            .padding(.vertical, 4)

          Text(shopAddress)
            .font(.system(size: 15).weight(.regular))
            .foregroundColor(.gray)
            .padding(.horizontal)
        }
        .frame(height: UIScreen.screenHeight / 3, alignment: .top)
      }

    }
}

struct PaymentTopView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentTopView(shopName: "Sai-Mart", shopAddress: "43-BD, Delhi")
    }
}
