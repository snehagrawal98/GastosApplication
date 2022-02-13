//
//  AfterPaymentView.swift
//  GastosApplication
//
//  Created by Sai Kumar Kasireddi's MacBook on 12/02/22.
//

import SwiftUI

struct AfterPaymentView: View {
  @Environment (\.dismiss) var dismiss
  @State var status: String

  var paymentMessage: String {
    if status == "Failed" {
      return "Bill Payment Failed"
    } else {
      return "Bill Payment Pending"
    }
  }

  var paymentResult: String {
    if status == "Success" {
      return "Activaed"
    } else if status == "Failed" {
      return "Failed"
    } else {
      return "Pending"
    }
  }

  var gradientColor: String {
    if status == "Success" {
      return "deepGreen"
    } else if status == "Failed" {
      return "deepRed"
    } else {
      return "deepYellow"
    }
  }

  var paymentSymbol: String {
    if status == "Success" {
      return "checkmark"
    } else if status == "Failed" {
      return "xmark"
    } else {
      return "exclamationmark"
    }
  }

  var paymentSymbolColor: String {
    if status == "Success" {
      return "lightGreen"
    } else if status == "Failed" {
      return "brightRed"
    } else {
      return "lightYellow"
    }
  }

    var body: some View {
      NavigationView {
        ZStack {
          GradientView(firstColor: gradientColor, secondColor: gradientColor)

          VStack {
            HStack {
                Button(action: {
                  dismiss()
                }, label: {
                  Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 23, height: 15, alignment: .leading)
                    .foregroundColor(.white)
              })
                .padding()

              Spacer()
            }

            Spacer()

            // Payment Message
            if status == "Success" {
              VStack(spacing: 0) {
                Text("Welcome to")
                  .font(.system(size: 18))
                  .fontWeight(.bold)
                  .foregroundColor(.white)

                Text("GREEN CARD CLUB")
                  .font(.system(size: 18))
                  .fontWeight(.bold)
                  .foregroundColor(.white)
                  .padding(.top, 1)
                  .padding(.bottom, 40)
              }
            } else {
              Text(paymentMessage)
                .font(.system(size: 18))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top, 1)
                .padding(.bottom, 40)
            }

            Spacer()

            // Reciept
            ZStack{
              ProfileRecieptView(serviceCharge: 119, status: paymentResult, date: "02 August 2021", time: "02 : 35 : 45 PM", savings: 30, shapeColor: Color(gradientColor))
                .padding()

                PaymentSymbol(shapeColor: Color(paymentSymbolColor), paymentSymbol: paymentSymbol)
                .offset(y: -0.3 * UIScreen.screenHeight)
            }

            Spacer()

            if status != "Success" {
              Text("Retry")
                .fontWeight(.bold)
                .foregroundColor(.white)
            }

            Spacer()

            // Bottom button
            Button(action: {
              // go home
            }, label: {
              BottomButton(buttonText: "Jump to Home", buttonColor: "white", textColor: "5")
                .padding(.bottom, 30)
            })
          }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
      }
    }
}

struct AfterPaymentView_Previews: PreviewProvider {
    static var previews: some View {
      AfterPaymentView(status: "Success")
    }
}

// ProfileRecieptView
struct ProfileRecieptView: View {
  @State var serviceCharge: Double
  @State var status: String
  @State var date: String
  @State var time: String
  @State var savings: Double
  @State var shapeColor: Color
  let rupeeSymbol = "\u{20B9}"

  var billAfterSavings: Double {
    return serviceCharge - savings
  }
  var gst: Double {
    return (billAfterSavings * 0.18)
  }
  var billAfterGst: Double {
    return billAfterSavings + gst
  }

    var body: some View {
      ZStack {
        ZStack {
          Group {
            Rectangle()
              .frame(width: 0.84 * UIScreen.screenWidth, height: 0.59 * UIScreen.screenHeight, alignment: .center)
              .cornerRadius(20)
            .foregroundColor(.white)
          }

          VStack(alignment: .center) {
            Text("Bill Amount of")
              .recieptLightStyle()
              .padding(.top, 0.04 * UIScreen.screenHeight)

            Text("\(rupeeSymbol) \(billAfterGst, specifier: "%g")")
              .font(.title.weight(.bold))
              .foregroundColor(.black)
              .padding(.top, 1)
              .padding(.bottom, 2)

            VStack(spacing: 0.022 * UIScreen.screenHeight) {

              Text(status)
                .font(.title.weight(.semibold))
                .padding()

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

              HStack {
                Text("Service Charge")
                  .recieptLightStyle()

                Spacer()

                Text("\(rupeeSymbol) \(serviceCharge, specifier: "%g")")
                  .recieptDarkStyle()
              }

              HStack {
                Text("Savings")
                  .recieptLightStyle()

                Spacer()

                Text("- \(rupeeSymbol) \(savings, specifier: "%g")")
                  .font(.subheadline.weight(.bold))
                  .foregroundColor(.green)
              }

              HStack {
                Text("GST")
                  .recieptDarkStyle()

                Spacer()

                Text("\(rupeeSymbol) \(gst, specifier: "%g")")
                  .font(.subheadline.weight(.bold))
              }
            }
          }
          .frame(width: 0.73 * UIScreen.screenWidth, height: 0.47 * UIScreen.screenHeight, alignment: .center)

          // Bottom Circles
          VStack {
            Spacer()

            HStack(alignment: .center, spacing: 12) {
              ForEach(1..<10) { _ in
                //Circle()
                Ellipse()
                  .foregroundColor(shapeColor)
                  .frame(width: 0.053 * UIScreen.screenWidth, height: 0.026 * UIScreen.screenHeight, alignment: .center)
              }
            } //: HSTACK
          } //: VSTACK
          .frame(width: 0.84 * UIScreen.screenWidth, height: 0.61 * UIScreen.screenHeight, alignment: .center)
        }
      }
    }
}
