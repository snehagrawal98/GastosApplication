//
//  ActivationPaymentView.swift
//  GastosApplication
//
//  Created by Sai Kumar Kasireddi's MacBook on 04/02/22.
//

import SwiftUI

struct ActivationPaymentView: View {
//  @State var shopName: String
//  @State var shopAddress: String
//  @State var discount: Double
  @Environment(\.dismiss) var dismiss
    var body: some View {
      NavigationView {
        VStack {
          ZStack {
            VStack {
              ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("deepGreen"), Color("textGreen")]), startPoint: .leading, endPoint: .trailing)
                  .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight / 3, alignment: .top)
                  .foregroundColor(Color("deepGreen"))
                  .edgesIgnoringSafeArea(.all)
                  .cornerRadius(24, corners: [.bottomLeft, .bottomRight])
                  .edgesIgnoringSafeArea(.all)

                VStack(alignment: .leading) {
                  HStack {
                    Button(action: {
                      dismiss()
                    }, label: {
                      Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 22.5, height: 15)
                        .foregroundColor(.white)
                    })
                      .padding(.horizontal, 24)
                      .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //          .fullScreenCover(isPresented: $isShowingShop, content: {
            //            ShopView(shopName: "Cafe Bistro", shopImagesUrl: "https://picsum.photos/300/200")
            //          })

                    Spacer()
                  }

                  Text("Green Card Club")
                    .font(.title.weight(.bold))
                    .foregroundColor(.white)
                    .padding(.horizontal, 24)
                    .padding(.vertical, 4)

                  Text("GASTOS PRIVATE LIMITED")
                    .font(.body.weight(.regular))
                    .foregroundColor(.gray)
                    .padding(.horizontal, 24)
                }
                .frame(height: UIScreen.screenHeight / 3, alignment: .top)
              }


              Spacer()
              Spacer()
            }
            .frame(height: UIScreen.screenHeight, alignment: .top)

            VStack {
              Spacer()

               ActivationPaymentBottomView()
                .padding(.bottom)
            }

          Spacer()
        }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
      }
    }}

struct ActivationPaymentView_Previews: PreviewProvider {
    static var previews: some View {
        ActivationPaymentView()
      //ActivationPaymentBottomView()
    }
}

// Activation Payment Bottom View
struct ActivationPaymentBottomView: View {
  @State var coinsValue = 30.0
  @State var sericeCharge = 119.0
  let gstPercentage = 18.0
  @State var chargeAfterDiscount = 119.0
  @State var gstToPay = 21.42
  @State var amountToPay = 140.42
  let rupeeSymbol = "\u{20B9}"
  @State var usingCoins = false

  var discount: Double {
    if usingCoins {
      return coinsValue
    } else {
      return 0
    }
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

            // Activation Info
            VStack {
              HStack {
                Text("Your Account will be active for ")
                  .font(.subheadline.weight(.semibold))
                  .foregroundColor(.black.opacity(0.7))

                Spacer()

                HStack(spacing: 1) {
                  Text("28")
                    .font(.largeTitle.weight(.bold))


                  Text("Days")
                    .font(.title.weight(.medium))
                }
                .foregroundColor(Color("deepGreen"))
              }

              Spacer()
                .frame(minHeight: 0.005 * UIScreen.screenHeight, maxHeight: 0.02 * UIScreen.screenHeight)

              VStack(alignment: .leading) {




                Toggle(isOn: $usingCoins, label: {
                    VStack(alignment: .leading, spacing: 4) {
                      Text("Use coins for discount")
                        .font(.subheadline.weight(.semibold))
                        .foregroundColor(.black.opacity(0.7))

                      Text("Balance: 300")
                        .font(.caption.weight(.semibold))
                        .foregroundColor(Color("textGreen"))
                    }

                })
                  .onChange(of: usingCoins) { value in
                    changeValues()
                  }




                Text("You'll save 30 using 300 coins")
                  .font(.caption.weight(.semibold))
                  .foregroundColor(.gray)
              }
            }

            Spacer()

            // Payment Options
            Group {
              Text("Select Method")
                .font(.subheadline.weight(.bold))
                .foregroundColor(Color("deepGreen"))
                .frame(width: UIScreen.screenWidth - 60, alignment: .leading)

              PaymentMethods()
            } //: GROUP

            // UPI Quote
            HStack {
              Image("safeUPI")

              Text("100% Secure & Safe Payments")
                .font(.caption2.weight(.bold))
                .foregroundColor(.gray)
                .offset(y: -7)
            }
            .frame(height: 34, alignment: .center)

            Spacer()

            Group {
              // Service Charge
              HStack {
                Text("Service Charge")
                  .font(.subheadline.weight(.bold))
                  .foregroundColor(.gray)

                Spacer()

                Text("\(rupeeSymbol)\(sericeCharge, specifier: "%.2f")")
                  .font(.subheadline.weight(.bold))
                  .foregroundColor(Color("deepGreen"))
              }
              .padding(.horizontal)
              .padding(.vertical, 2)

              // Discount
              HStack {
                Text("Discount")
                  .font(.subheadline.weight(.bold))
                  .foregroundColor(.gray)

                Spacer()

                Text("\(rupeeSymbol)\(discount, specifier: "%.2f")")
                  .font(.subheadline.weight(.bold))
                  .foregroundColor(.orange)
              }
              .padding(.horizontal)
              .padding(.vertical, 2)

              // GST
              HStack {
                Text("GST")
                  .font(.subheadline.weight(.bold))
                  .foregroundColor(.gray)

                Spacer()

                Text("\(rupeeSymbol)\(gstToPay, specifier: "%.2f")")
                  .font(.subheadline.weight(.bold))
                  .foregroundColor(Color("deepGreen"))
              }
              .padding(.horizontal)
              .padding(.vertical, 2)


              // Amount To Pay
              HStack {
                Text("Total Amount To Pay")
                  .font(.subheadline.weight(.bold))
                  .foregroundColor(.gray)

                Spacer()

                Text("\(rupeeSymbol)\(amountToPay, specifier: "%.2f")")
                  .font(.title.weight(.bold))
                  .foregroundColor(Color("textGreen"))
              }
              .padding(.horizontal)
             // .padding(.top, 6)
            }

            Spacer()

            Button(action: {
              // payment url
            }, label: {
              BottomButton(buttonText: "Pay", buttonColor: "textGreen", textColor: "white")
            })

            Spacer()
          }
          .padding()
          .frame(width: UIScreen.screenWidth - 16, height: 3/4 * UIScreen.screenHeight)
        }
      }
    }

  // function to change values for using coins
  func changeValues() {
    if usingCoins {
      chargeAfterDiscount = sericeCharge - coinsValue
      gstToPay = (gstPercentage/100) * chargeAfterDiscount
      amountToPay = chargeAfterDiscount + gstToPay
    } else {
      chargeAfterDiscount = 119.0
      gstToPay = 21.42
      amountToPay = 140.42
    }
  }
}
