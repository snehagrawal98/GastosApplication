//
//  ExclusiveDeals.swift
//  GastosApplication
//
//  Created by Sai Kumar Kasireddi's MacBook on 09/03/22.
//

import SwiftUI

struct ExclusiveDeals: View {
    var body: some View {
      NavigationView {
        VStack {
          ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("deepGreen"), Color("textGreen")]), startPoint: .leading, endPoint: .trailing)
              .frame(width: UIScreen.screenWidth, height: 0.28 * UIScreen.screenHeight)

            Image("ExclusiveDeals")
              .resizable()
              .scaledToFit()
              .frame(width: 0.538 * UIScreen.screenWidth, height: 0.1 * UIScreen.screenHeight)
          }
          .padding(.bottom, 12)

          ZStack {
            Image("ExclusiveDealsBlurImg")
              .resizable()
              .frame(width: UIScreen.screenWidth, height: 0.54 * UIScreen.screenHeight)

            Image("EliteMarketComingSoon")
              .resizable()
              .scaledToFit()
              .frame(width: 0.746 * UIScreen.screenWidth, height: 0.2 * UIScreen.screenHeight)
          }

        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
      }
    }
}

struct ExclusiveDeals_Previews: PreviewProvider {
    static var previews: some View {
        ExclusiveDeals()
    }
}
