//
//  Gullak.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/16/21.
//

import SwiftUI

struct Gullak: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
      NavigationView {
        VStack(spacing: -50) {
          // Top Image
          ZStack {
            Path({ path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 0, y: Constants.sH * 0.3))
                path.addQuadCurve(to: CGPoint(x: Constants.sW, y: Constants.sH * 0.3), control: CGPoint(x: Constants.sW / 2, y: Constants.sH * 0.55))
                path.addLine(to: CGPoint(x: Constants.sW, y: 0))
            })
              .fill(Color("textGreen").opacity(0.2))
            .ignoresSafeArea(.all)


            VStack(spacing: -5) {
              HStack {
                Button(action: {dismiss()}, label: {
                  Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 25, height: 12.5)
                    .foregroundColor(.black)
                })
                  .padding(.horizontal)
                Spacer()
              }

              VStack {
                Image("Gullak")
                  .resizable()
                  .scaledToFit()
                .frame(width: 0.60 * UIScreen.screenWidth)

                Text("Total coins in Gullak")
                  .font(.title3.weight(.bold))
                  .foregroundColor(Color("deepGreen"))

                Text("300")
                  .font(.title2.weight(.bold))
                  .foregroundColor(Color("deepGreen"))

                Spacer()
              }
              .offset(y: -30)
            }
          }

          // Transactions
          ScrollView {
            ForEach(1..<15) { i in
              HStack {
                VStack{
                  Text("Referral")
                    .font(.body.weight(.semibold))

                  Text("Sent to Ajay")
                    .font(.subheadline.weight(.regular))
                }
                .foregroundColor(Color("deepGreen"))

                Spacer()

                VStack {
                  Text("+ 50")
                    .font(.title3.weight(.semibold))
                    .foregroundColor(Color("textGreen"))

                  Text("12/07/21  03:30pm")
                    .font(.caption.weight(.regular))
                    .foregroundColor(.gray)
                }
              }
              .padding()
              .frame(width: 0.88 * UIScreen.screenWidth, height: 0.08 * UIScreen.screenHeight)
              .background(
                RoundedRectangle(cornerRadius: 20)
                  .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
              )
              .padding(.bottom)
            }
          }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
      }
    }
}

struct Gullak_Previews: PreviewProvider {
    static var previews: some View {
        Gullak()
    }
}
