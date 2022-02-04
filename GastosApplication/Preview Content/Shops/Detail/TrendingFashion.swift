//
//  TrendingFashion.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 12/01/22.
//

import SwiftUI

struct TrendingFashion: View {
    @ObservedObject private var shopsViewModel: ShopsViewModel = ShopsViewModel()

    var body: some View {
      VStack(alignment: .leading) {
        Text("Trending")
          .title3TextStyle()
          .padding(.horizontal)
          .padding(.vertical, 8)

        ScrollView {
          VStack(alignment: .leading) {
              ForEach(shopsViewModel.shopInfo, id: \.self) { shops in
                  TrendingItem(itemImageUrl: shops.imageUrl ?? "https://picsum.photos/100", itemName: shops.name ?? "No Shop", itemPlace: "Beyti Restaurant", itemRating: 4.8, itemRatings: 233)
              }
              .onAppear {
                  shopsViewModel.getAllMerchants()
              }
//            ForEach(1..<10) {_ in
//              TrendingItem(itemImage: "foodItem", itemName: "Fashion Meat Pizza with Chicken", itemPlace: "Beyti Restaurant", itemRating: 4.8, itemRatings: 233)
//            }
          } //: VSTACK
        } //: SCROLL
      } //: VSTACK
    }
}

struct TrendingFashion_Previews: PreviewProvider {
    static var previews: some View {
        TrendingFashion()
    }
}
