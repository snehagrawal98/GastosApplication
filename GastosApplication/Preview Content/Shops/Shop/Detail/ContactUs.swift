//
//  ContactUs.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 14/01/22.
//

import SwiftUI
import UIKit

struct ContactUs: View {
  @State var contactName: String
  @State var address: String
  var strNumber = "911234567890"

    var body: some View {
      VStack {
        HStack {
          VStack(alignment: .leading) {
            Text(contactName)
              .font(.title3.weight(.bold))
              .foregroundColor(Color("textGreen"))

            Text("here at your service")
              .font(.subheadline.weight(.medium))
              .foregroundColor(.gray)
          }
          Spacer()
          Button(action: {
            // call shop
            let tel = "tel://"
            let formattedString = tel + strNumber
            guard let url = URL(string: formattedString) else { return }
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
          }, label: {
            VStack {
              Image(systemName: "phone.fill.arrow.up.right")
                .scaleEffect(1.5)
                .padding(8)

              Text("Connect")
                .font(.caption2.weight(.medium))
            }
            .frame(width: 80, height: 38, alignment: .center)
            .foregroundColor(Color("textGreen"))
          })
        }
        .padding(.horizontal, 24)

        HStack {
          VStack(alignment: .leading) {
            Text("Visit us at :")
              .font(.subheadline.weight(.bold))
              .foregroundColor(Color("textGreen"))
              .padding(.vertical, 2)

            Text(address)
              .font(.subheadline.weight(.regular))
              .frame(height: 40)
          }
          Spacer()
          Button(action: {
            // Jump to shop
          }, label: {
            VStack {
              Image(systemName: "paperplane.fill")
                .scaleEffect(1.5)
                .padding(8)

              Text("Jump to shop")
                .font(.caption2.weight(.medium))
            }
            .frame(width: 80, height: 38, alignment: .center)
            .foregroundColor(Color("textGreen"))
          })
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 24)
      }
    }
}

struct ContactUs_Previews: PreviewProvider {
    static var previews: some View {
      ContactUs(contactName: "Mansi Gupta", address: "Whiteields 134 - 4, Sector 22, Chandigarh- 411007")
    }
}
