//
//  PaymentTopView.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 14/01/22.
//

import SwiftUI

struct PaymentTopView: View {
    @State var merch: Merchant?
  @State var shopName: String
  @State var shopAddress: String
  @State var isShowingShop = false

    var body: some View {
      ZStack {
        LinearGradient(gradient: Gradient(colors: [Color("deepGreen"), Color("textGreen")]), startPoint: .leading, endPoint: .trailing)
          .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight / 3, alignment: .top)
          .foregroundColor(Color("deepGreen"))
          .edgesIgnoringSafeArea(.all)
          .cornerRadius(24, corners: [.bottomLeft, .bottomRight])
          .edgesIgnoringSafeArea(.all)

        VStack(alignment: .leading) {
          HStack {
            Button(action: {
              isShowingShop.toggle()
            }, label: {
              Image(systemName: "arrow.left")
                .resizable()
                .frame(width: 22.5, height: 15)
                .foregroundColor(.white)
            })
              .padding(.horizontal, 24)
              .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
              .fullScreenCover(isPresented: $isShowingShop, content: {
                  ShopView(shopName: merch?.shop.shopName ?? "No Shop Name",
                           shopImagesUrl: merch?.shop.shopImageURI ?? "https://picsum.photos/100",
                           shopImagesUri1: merch?.shop.shopImageURI1 ?? "https://picsum.photos/100",
                           shopImagesUri2: merch?.shop.shopImageURI2 ?? "https://picsum.photos/100",
                           shopImagesUri3: merch?.shop.shopImageURI3 ?? "https://picsum.photos/100",
                           shopImagesUri4: merch?.shop.shopImageURI4 ?? "https://picsum.photos/100",
                           shopAddress: merch?.shop.shopAddress ?? "No Shop Address",
                           shopOwnerName: merch?.name ?? "No Owner Name",
                           shopCategory: merch?.shop.category?.rawValue ?? "No Category",
                           shopDelivery: merch?.shop.homeDelivery ?? false,
                           shopPickUp: merch?.shop.pickUp ?? false)
              })

            Spacer()
          }

          Text(shopName)
            .font(.title.weight(.bold))
            .foregroundColor(.white)
            .padding(.horizontal, 24)
            .padding(.vertical, 4)

          Text(shopAddress)
            .font(.body.weight(.regular))
            .foregroundColor(.gray)
            .padding(.horizontal, 24)
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
