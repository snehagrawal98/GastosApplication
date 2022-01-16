//
//  ShopView.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 14/01/22.
//

import SwiftUI

struct ShopView: View {
    @State var shopName = "Cafe Bistro"

    var body: some View {
      VStack {
        ZStack {
          Rectangle()
            .foregroundColor(.white)
            .frame(height: 370)
            .cornerRadius(22)
            .shadow(color: Color.gray, radius: 5)
            .edgesIgnoringSafeArea(.all)

          VStack {
            HStack {
              Image(systemName: "arrow.left")
                .resizable()
                .frame(width: 22, height: 15, alignment: .leading)
                .foregroundColor(Color("textGreen"))
                .padding(.horizontal, 20)

              Spacer()

              Text(shopName)
                .font(.system(size: 25).weight(.bold))
                .foregroundColor(Color("deepGreen"))

              Spacer()
                .frame(width: 180)
            }

            ShopImages()
              .frame(height: 220)
          }
          .frame(height: 330)
        }

        ShopDetails()
          .padding(.bottom)

        Spacer()

        Image("discount")
          .resizable()
          .frame(width: 360, height: 127, alignment: .center)
          .scaledToFill()
        ContactUs(contactName: "Mansi Gupta", address: "Whiteields 134 - 4, Sector 22, Chandigarh- 411007")
          .padding(.top)

        Button(action: {
          Payment(shopName: "Sai-Mart", shopAddress: "43-BD, Delhi", discount: 10.0)
        }, label: {
          BottomButton(buttonText: "Pay", buttonColor: "textGreen", textColor: "white")
            .font(.system(size: 18))
        })
        
        Spacer()
        Spacer()
      }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
