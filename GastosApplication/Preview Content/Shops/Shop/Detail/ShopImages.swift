//
//  ShopImages.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 14/01/22.
//

import SwiftUI

struct ShopImages: View {
    var body: some View {
      TabView {
        ForEach(1..<5) { _ in
          Image("detailShop")
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .padding(.top, 10)
            .padding(.horizontal, 15)
        }
      }//: TAB
      .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct ShopImages_Previews: PreviewProvider {
    static var previews: some View {
        ShopImages()
        .background(Color.gray)
    }
}
