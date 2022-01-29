//
//  AlertView.swift
//  GastosApplication
//
//  Created by Sai Kumar Kasireddi's MacBook on 29/01/22.
//

import SwiftUI

struct AlertView: View {
  var msg: String
  @Binding var show: Bool

    var body: some View {
      VStack {
        Text("Message")
          .foregroundColor(.black)

        Text(msg)
          .foregroundColor(.black)

        Button(action: {
          // closing popup
          withAnimation{show.toggle()}
        }, label: {
          Text("close")
            .foregroundColor(.black)
            .frame(width: UIScreen.main.bounds.width - 100, alignment: .center)
            .background(Color.yellow)
        })
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(Color.black.opacity(0.5))
    }
}
