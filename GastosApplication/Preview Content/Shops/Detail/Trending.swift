//
//  Trending.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 11/01/22.
//

import SwiftUI

struct Trending: View {
    @ObservedObject private var shopsViewModel: ShopsViewModel = ShopsViewModel()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
              Text("Trending")
                .title3TextStyle()
                .padding(.horizontal)
                .padding(.vertical, 8)
                .onAppear {
                    shopsViewModel.getAllMerchants()
                    print(shopsViewModel.shopInfo)
                }

              ScrollView {
                VStack(alignment: .leading) {
                    
                    ForEach(shopsViewModel.shopInfo, id: \.self) { shops in
                        
                        NavigationLink {
                            
                            ShopView(shopName: shops.name ?? "No Shop", shopImagesUrl: shops.imageUrl ?? "https://picsum.photos/300/200")
                            
                        } label: {
                            TrendingItem(itemImageUrl: shops.imageUrl ?? "https://picsum.photos/100", itemName: shops.name ?? "No Shop", itemPlace: "Beyti Restaurant", itemRating: 4.8, itemRatings: 233)

                        }

                    }
                    .onAppear {
                        shopsViewModel.getAllMerchants()
                        print(shopsViewModel.shopInfo)
                    }
      //            ForEach(1..<10) {_ in
      //              TrendingItem(itemImageUrl: "https://picsum.photos/100", itemName: "Meat Pizza with Chicken", itemPlace: "Beyti Restaurant", itemRating: 4.8, itemRatings: 233)
      //            }
                } //: VSTACK
              } //: SCROLL
            } //: VSTACK
            .navigationBarHidden(true)
            .navigationBarTitle("")

        }
      
    }
}

struct Trending_Previews: PreviewProvider {
    static var previews: some View {
        Trending()
    }
}

// Trending Item
struct TrendingItem: View {
  var itemImageUrl: String
  var itemName: String
  var itemPlace: String
  var itemRating: Double
  var itemRatings: Int

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: itemImageUrl)) { images in
                images.resizable()
            } placeholder: {
                ProgressView()
                    .frame(width: 100, height: 100, alignment: .center)
            }

//          Image(itemImage)

          VStack(alignment: .leading) {
            VStack(alignment: .leading) {
              Text(itemName)
                .normalTextStyle()
                .padding(.bottom, 1)
                .foregroundColor(.black)

              Text(itemPlace)
                .subTextStyle()
                .padding(.bottom, 1)
            } //: VSTACK

            HStack {
              Image(systemName: "star.fill")
                .foregroundColor(.orange)

              Text("\(itemRating, specifier: "%g")")
                .subTextNumberStyle()
                .foregroundColor(.black)

              Text("(\(itemRatings) ratings)")
                .subTextStyle()
            } //: HSTACK
          } //: VSTACK
          .frame(width: 250, alignment: .leading)
      } //: HSTACK
      .padding(.horizontal)
      .padding(.vertical, 8)
      .frame(width: UIScreen.screenWidth, height: 104, alignment: .leading)
  }
}
