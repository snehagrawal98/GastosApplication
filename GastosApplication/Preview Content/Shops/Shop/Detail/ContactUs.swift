//
//  ContactUs.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 14/01/22.
//

import SwiftUI

struct ContactUs: View {
  @State var contactName: String
  @State var address: String

    var body: some View {
      VStack {
        HStack {
          VStack(alignment: .leading) {
            Text(contactName)
              .font(.system(size: 20).weight(.bold))
              .foregroundColor(Color("textGreen"))

            Text("here at your service")
              .font(.system(size: 14).weight(.medium))
              .foregroundColor(.gray)
          }
          Spacer()
          Button(action: {
            // call shop
          }, label: {
            VStack {
              Image(systemName: "phone.fill.arrow.up.right")
                .scaleEffect(1.5)
                .padding(8)

              Text("Connect")
                .font(.system(size: 10).weight(.medium))
            }
            .frame(width: 80, height: 38, alignment: .center)
            .foregroundColor(Color("textGreen"))
          })
        }
        .padding(.horizontal)

        HStack {
          VStack(alignment: .leading) {
            Text("Visit us at :")
              .font(.system(size: 14).weight(.bold))
              .foregroundColor(Color("textGreen"))
              .padding(.vertical, 4)

            Text(address)
              .font(.system(size: 14).weight(.regular))
              .frame(height: 34)
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
                .font(.system(size: 10).weight(.medium))
            }
            .frame(width: 80, height: 38, alignment: .center)
            .foregroundColor(Color("textGreen"))
          })
        }
        .padding()
      }
    }
}

struct ContactUs_Previews: PreviewProvider {
    static var previews: some View {
      ContactUs(contactName: "Mansi Gupta", address: "Whiteields 134 - 4, Sector 22, Chandigarh- 411007")
    }
}
