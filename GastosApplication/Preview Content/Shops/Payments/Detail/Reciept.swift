//
//  Reciept.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 12/01/22.
//

import SwiftUI

struct Reciept: View {
  @State var billAmount: Double
  @State var customerName: String
  @State var shopName: String
  @State var date: String
  @State var time: String
  @State var discount: Double
  @State var paymentStatus: Bool
  @State var shapeColor: Color

  var savings: Double {
    return (billAmount * (self.discount/100))
  }

  var coins: Double {
    return (savings/10)
  }

  var amountPaid: Double {
    return (billAmount - savings)
  }

    var body: some View {
      ZStack {
        ZStack {
          Rectangle()
            .frame(width: 350, height: 481, alignment: .center)
            .cornerRadius(20)
          .foregroundColor(.white)
        }

        VStack(alignment: .center) {
          Text("Bill Amount of")
            .recieptLightStyle()

          Text("$ \(billAmount, specifier: "%g")")
            .font(.system(size: 30).bold())
            .foregroundColor(.black)
            .padding(.vertical, 4)
            .padding(.bottom, 20)
          VStack(spacing: 15) {
            HStack {
              Text("Billed To")
                .recieptLightStyle()

              Spacer()

              Text(customerName)
                .recieptDarkStyle()
            }

            HStack {
              Text("at")
                .recieptLightStyle()

              Spacer()

              Text(shopName)
                .recieptDarkStyle()
            }

            HStack {
              Text("Date")
                .recieptLightStyle()

              Spacer()

              Text(date)
                .recieptDarkStyle()
            }

            HStack {
              Text("time")
                .recieptLightStyle()

              Spacer()

              Text(time)
                .recieptDarkStyle()
            }

            Divider()
              .padding()

            HStack {
              Text("Billed Amount")
                .recieptLightStyle()

              Spacer()

              Text("$ \(billAmount, specifier: "%g")")
                .recieptDarkStyle()
            }

            HStack {
              Text("Savings")
                .recieptLightStyle()

              Spacer()

              Text("- $ \(savings, specifier: "%g")")
                .font(.system(size: 14))
                .fontWeight(.bold)
                .foregroundColor(.green)
            }

            if paymentStatus {
              HStack {
                Text("Coins Earned")
                  .recieptLightStyle()

                Spacer()

                Text("+ $ \(coins, specifier: "%g")")
                  .font(.system(size: 14))
                  .fontWeight(.bold)
                  .foregroundColor(.orange)
              }
            }

            HStack {
              Text("Amount Paid")
                .recieptDarkStyle()

              Spacer()

              Text("$ \(amountPaid, specifier: "%g")")
                .font(.system(size: 14))
                .fontWeight(.bold)
                .foregroundColor(.blue)
            }
          }
        }
        .frame(width: 275, height: 525, alignment: .center)

        HStack(alignment: .center, spacing: 15) {
          ForEach(1..<10) { _ in
            Circle()
              .foregroundColor(shapeColor)
              .frame(width: 22, height: 22, alignment: .center)
              .offset(y: 238)
          }
        }
      }
    }
}

struct Reciept_Previews: PreviewProvider {
    static var previews: some View {
      Reciept(billAmount: 10000, customerName: "Krishna Kumar", shopName: "shop name", date: "02 August 2021", time: "02 : 35 : 45 PM", discount: 20, paymentStatus: true, shapeColor: Color("circle"))
        .preferredColorScheme(.dark)
    }
}
