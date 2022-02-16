//
//  TrendingFood.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 12/01/22.
//

import SwiftUI

struct TrendingFood: View {
    @ObservedObject private var shopsViewModel: ShopsViewModel = ShopsViewModel()

    
    var body: some View {
      VStack(alignment: .leading) {
        Text("Trending Food")
          .title3TextStyle()
          .padding(.horizontal)
          .padding(.vertical, 8)
          .onAppear {
              shopsViewModel.getAllMerchants()
          }


        ScrollView {
          VStack(alignment: .leading) {
              
              ForEach(shopsViewModel.merchantArray, id: \.self) { merch in
                  if merch.shop.category == ShopCategory.food {
                      TrendingItem(itemImageUrl: merch.shop.shopImageURI ?? "https://picsum.photos/100", itemName: merch.shop.shopName ?? "No Shop Name", itemPlace: merch.shop.shopAddress ?? "No Shop Address", itemRating: 4.8, itemRatings: 233)
                  }
              }
//            ForEach(1..<10) {_ in
//              TrendingItem(itemImage: "foodItem", itemName: "Food Meat Pizza with Chicken", itemPlace: "Beyti Restaurant", itemRating: 4.8, itemRatings: 233)
//            }
          } //: VSTACK
        } //: SCROLL
        .frame(width: Constants.sW)
      } //: VSTACK
      .onAppear {
          shopsViewModel.getAllMerchants()
      }

    }
}

struct TrendingFood_Previews: PreviewProvider {
    static var previews: some View {
        TrendingFood()
    }
}
