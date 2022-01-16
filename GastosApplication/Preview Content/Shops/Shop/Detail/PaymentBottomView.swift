//
//  PaymentBottomView.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 15/01/22.
//

import SwiftUI

struct PaymentBottomView: View {
  @State var discount = 10.0
  @State var billedAmount = ""
  @State var includedMRP = ""
  var savings: Double {
    return (discount / 100) * (Double(billedAmount) ?? 0)
  }
  var amountToPay: Double {
    return (Double(billedAmount) ?? 0) - savings
  }

    var body: some View {
      VStack {
        ZStack {
          Rectangle()
            .frame(width: UIScreen.screenWidth - 16, height: 3/4 * UIScreen.screenHeight, alignment: .bottom)
            .foregroundColor(.white)
            .cornerRadius(15)
            .shadow(radius: 10)
            .padding()

          VStack {
            Spacer()
            Group {
              HStack {
                Image(systemName: "info.circle")
                  .resizable()
                  .frame(width: 14, height: 14, alignment: .center)
                  .foregroundColor(Color("textGreen"))

                Text("Minimum billed amount should be $150 to avail discounts")
                  .font(.system(size: 10).weight(.bold))
                .foregroundColor(Color("textGreen"))
              }

              TextField("Billed Amount", text: $billedAmount)
                .font(.system(size: 14).bold())
                .padding()
                .frame(width: 320, height: 48, alignment: .center)
                .foregroundColor(Color.black)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                      .stroke(Color.gray, lineWidth: 1)
                )

              TextField("Included MRP(if any)", text: $includedMRP)
                .font(.system(size: 14).bold())
                .padding()
                .frame(width: 320, height: 48, alignment: .center)
                .foregroundColor(Color.black)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                      .stroke(Color.gray, lineWidth: 1)
                    )
            }

            Group {
              Text("Select Method")
                .font(.system(size: 14).bold())
                .foregroundColor(Color("deepGreen"))
                .frame(width: UIScreen.screenWidth - 60, alignment: .leading)

              PaymentMethods()
                //.padding(.horizontal)
            }

            HStack {
              Image("safeUPI")

              Text("100% Secure & Safe Payments")
                .font(.system(size: 10).bold())
                .foregroundColor(.gray)
                .offset(y: -7)
            }
            .frame(height: 34, alignment: .center)

            HStack {
              Text("Total Savings")
                .font(.system(size: 14).bold())
                .foregroundColor(.gray)

              Spacer()

              Text("$\(savings, specifier: "%.2f")")
                .font(.system(size: 14).bold())
                .foregroundColor(.orange)
            }
            .padding(.horizontal)
            .padding(.vertical, 8)

            HStack {
              Text("Total Amount To Pay")
                .font(.system(size: 14).bold())
                .foregroundColor(.gray)

              Spacer()

              Text("$\(amountToPay, specifier: "%.2f")")
                .font(.system(size: 32).bold())
                .foregroundColor(Color("textGreen"))
            }
            .padding(.horizontal)

            Button(action: {
              // payment url
            }, label: {
              BottomButton(buttonText: "Pay", buttonColor: "textGreen", textColor: "white")
            })


          }
          .padding()
          .frame(width: UIScreen.screenWidth - 16, height: 3/4 * UIScreen.screenHeight, alignment: .bottom)
        }
      }
      //.offset(y: 90)

    
    }
}

struct PaymentBottomView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentBottomView()
    }
}
