//
//  ShopView.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 14/01/22.
//

import SwiftUI
import UIKit

struct ShopView: View {
    @State var shopName = "Cafe Bistro"
    @State var isShowingPayments = false

    var body: some View {
      VStack {
        ZStack {
          Rectangle()
            .foregroundColor(.white)
            .frame(height: 0.405 * UIScreen.screenHeight)
            .cornerRadius(22, corners: [.bottomRight, .bottomLeft])
            .shadow(color: Color.gray, radius: 5)
            .edgesIgnoringSafeArea(.all)

          // NAavigation Bar & Shop Image
          VStack {
            Spacer()

            // Navigation Bar
            HStack {
              Image(systemName: "arrow.left")
                .resizable()
                .frame(width: 22, height: 15, alignment: .leading)
                .foregroundColor(Color("textGreen"))
                .padding(.horizontal, 20)

              Spacer()

              Text(shopName)
                .font(.title.weight(.bold))
                .foregroundColor(Color("deepGreen"))

              Spacer()
              Spacer()
              Spacer()
              Spacer()
            } //: HSTACK

            Spacer()

            ShopImages()

            Spacer()
            Spacer()
          }
          .frame(height: 0.405 * UIScreen.screenHeight)
        } //: ZSTACK

        ShopDetails()
          .padding(.top, -20)

        Spacer()

        // Discount Image
        Image("discount")
          .resizable()
          .scaledToFill()
          .frame(width: 0.896 * UIScreen.screenWidth, height: 0.157 * UIScreen.screenHeight, alignment: .center)

        Spacer()

        ContactUs(contactName: "Mansi Gupta", address: "Whiteields 134 - 4, Sector 22, Chandigarh- 411007")
          .padding(.top)

        Spacer()

        // Pay button
        Button(action: {
          isShowingPayments.toggle()
        }, label: {
          BottomButton(buttonText: "Pay", buttonColor: "textGreen", textColor: "white")
            .font(.headline)
        })
          .fullScreenCover(isPresented: $isShowingPayments, content: {
            Payment(shopName: "Sai-Mart", shopAddress: "43-BD, Delhi", discount: 10.0)
          })

          
        
        Spacer()
      } //: VSTACK
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()

        ShopView()
        .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
    }
}
