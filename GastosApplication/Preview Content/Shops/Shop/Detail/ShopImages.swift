//
//  ShopImages.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 14/01/22.
//

import SwiftUI

struct ShopImages: View {
    var shopImagesUrl: String
    
    var body: some View {
      TabView {
        ForEach(1..<5) { _ in
            
            AsyncImage(url: URL(string: shopImagesUrl)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 0.864 * UIScreen.screenWidth, height: 0.226 * UIScreen.screenHeight)
            .cornerRadius(10)

//          Image("detailShop")
//            .resizable()
//            .scaledToFill()
//            .frame(width: 0.864 * UIScreen.screenWidth, height: 0.226 * UIScreen.screenHeight)
//            .cornerRadius(10)
           // .padding(.top, 10)
            //.padding(.horizontal, 15)
        }
      }//: TAB
      .frame(width: 0.864 * UIScreen.screenWidth, height: 0.226 * UIScreen.screenHeight)
      .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct ShopImages_Previews: PreviewProvider {
    static var previews: some View {
        ShopImages(shopImagesUrl: "https://picsum.photos/300/200")
        .background(Color.gray)
    }
}
