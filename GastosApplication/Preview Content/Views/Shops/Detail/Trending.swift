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
//        NavigationView {
            VStack(alignment: .leading) {
              Text("Trending")
                .title3TextStyle()
                .padding(.horizontal)
                .padding(.vertical, 8)
                .onAppear {
                    shopsViewModel.getAllMerchants()
                    print(shopsViewModel.merchantArray)
                }

              ScrollView {
                VStack(alignment: .leading) {
                    
                    ForEach(shopsViewModel.merchantArray, id: \.self) { merch in
                        
                        NavigationLink {
                            
                            ShopView(shopName: merch.shop.shopName ?? "No Shop Name",
                                     shopImagesUrl: merch.shop.shopImageURI ?? "https://picsum.photos/100",
                                     shopImagesUri1: merch.shop.shopImageURI1 ?? "https://picsum.photos/100",
                                     shopImagesUri2: merch.shop.shopImageURI2 ?? "https://picsum.photos/100",
                                     shopImagesUri3: merch.shop.shopImageURI3 ?? "https://picsum.photos/100",
                                     shopImagesUri4: merch.shop.shopImageURI4 ?? "https://picsum.photos/100",
                                     shopAddress: merch.shop.shopAddress ?? "No Shop Address",
                                     shopOwnerName: merch.name ?? "No Owner Name",
                                     shopCategory: merch.shop.category?.rawValue ?? "No Category",
                                     shopDelivery: merch.shop.homeDelivery ?? false,
                                     shopPickUp: merch.shop.pickUp ?? false)
                            
                        } label: {
                            TrendingItem(itemImageUrl: merch.shop.shopImageURI ?? "https://picsum.photos/100", itemName: merch.shop.shopName ?? "No Shop Name", itemPlace: merch.shop.shopAddress ?? "No Address", itemRating: 4.8, itemRatings: 233)

                        }

                    }
                    .onAppear {
                        shopsViewModel.getAllMerchants()
                        print(shopsViewModel.merchantArray)
                    }
      //            ForEach(1..<10) {_ in
      //              TrendingItem(itemImageUrl: "https://picsum.photos/100", itemName: "Meat Pizza with Chicken", itemPlace: "Beyti Restaurant", itemRating: 4.8, itemRatings: 233)
      //            }
                } //: VSTACK
              } //: SCROLL
            } //: VSTACK
            .navigationBarHidden(true)
            .navigationBarTitle("")

//        }
      
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
