//
//  ApiJump.swift
//  GastosApplication
//
//  Created by Sai Kumar Kasireddi's MacBook on 12/02/22.
//

import SwiftUI

struct ApiJump: View {
  @Environment (\.dismiss) var dismiss
  @State var paymentStatus = "Success"

    var body: some View {
      NavigationView {
        VStack {
          HStack{
            Button(action: { dismiss() }) {
              Image(systemName: "arrow.left")
                .resizable()
                .frame(width: 22.5, height: 15)
                .padding()
                .foregroundColor(.black)
            }
            Spacer()
          }

          Spacer()

          Text("API JUMP")
            .font(.title.weight(.semibold))

          Spacer()

          HStack {
            Spacer()
            NavigationLink(destination: {
              AfterPaymentView(status: paymentStatus)
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            }, label: {
              Image(systemName: "arrow.right")
                .resizable()
                .frame(width: 22.5, height: 15)
                .foregroundColor(.black)
                .padding()
            })
          }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
      }
    }
}

struct ApiJump_Previews: PreviewProvider {
    static var previews: some View {
        ApiJump()
    }
}
