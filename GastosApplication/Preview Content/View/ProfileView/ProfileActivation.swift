//
//  ProfileActivation.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct ProfileActivation: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var btnSelected: Bool = false
    
    var body: some View {
      NavigationView {
        VStack(spacing: 20) {
          HStack {
                VStack {
                  HStack {
                    Button(action: {
                      dismiss()
                    }, label: {
                      Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 22.5, height: 15)
                        .foregroundColor(.white)
                    })
                      .padding(.bottom, 24)
                    Spacer()
                  }

                  Text("Activate your account & enjoy unlimited benefits on your regular payments")
                    .font(.body.weight(.semibold))
                    .foregroundColor(.white)
                }
                .padding(.leading)
                .frame(height: 0.25 * UIScreen.screenHeight)

                Spacer()

                Image("GastosMark")
                    .frame(width: 0.314 * UIScreen.screenWidth, height: 0.25 * UIScreen.screenHeight, alignment: .topTrailing)
              }
              .background(
                LinearGradient(gradient: Gradient(colors: [Color("deepGreen"), Color("textGreen")]), startPoint: .leading, endPoint: .trailing)
                  .frame(height: 0.25 * UIScreen.screenHeight)
                  //.edgesIgnoringSafeArea(.all)
            )
              .edgesIgnoringSafeArea(.all)


          profileActivationBottom

          //Spacer()
        } //: VSTACK
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
      } //: NAV
    }

  var profileActivationBottom: some View {
    VStack(spacing: 20) {
      HStack {
        Text("28 Days")
          .font(.body.weight(.medium))

        Spacer()

        Text("Rs 119")
          .font(.body.weight(.semibold))
      }
      .padding()
      .frame(width: 0.88 * UIScreen.screenWidth, height: 0.077 * UIScreen.screenHeight, alignment: .center)
      .background(
        RoundedRectangle(cornerRadius: 20)
          .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
      )
      .background(Color.white)

      HStack {
        Text("98 Days")
          .font(.body.weight(.medium))

        Spacer()

        Text("Rs 369")
          .font(.body.weight(.semibold))
      }
      .padding()
      .frame(width: 0.88 * UIScreen.screenWidth, height: 0.077 * UIScreen.screenHeight, alignment: .center)
      .background(
        RoundedRectangle(cornerRadius: 20)
          .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
      )
      .background(Color.white)

      HStack {
        Text("188 Days")
          .font(.body.weight(.medium))

        Spacer()

        Text("Rs 669")
          .font(.body.weight(.semibold))
      }
      .padding()
      .frame(width: 0.88 * UIScreen.screenWidth, height: 0.077 * UIScreen.screenHeight, alignment: .center)
      .background(
        RoundedRectangle(cornerRadius: 20)
          .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
      )
      .background(Color.white)

      HStack {
        Text("368 Days")
          .font(.body.weight(.medium))

        Spacer()

        Text("Rs 1269")
          .font(.body.weight(.semibold))
      }
      .padding()
      .frame(width: 0.88 * UIScreen.screenWidth, height: 0.077 * UIScreen.screenHeight, alignment: .center)
      .background(
        RoundedRectangle(cornerRadius: 20)
          .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
      )
      .background(Color.white)

      Spacer()
      Spacer()
      Spacer()

      NavigationLink(destination: {
        ActivationPaymentView()
          .navigationBarHidden(true)
          .navigationBarBackButtonHidden(true)
      }, label: {
        BottomButton(buttonText: "Procced", buttonColor: "textGreen", textColor: "white")
      })
      Spacer()
    }
    .frame(width: UIScreen.screenWidth, height: 0.7 * UIScreen.screenHeight)
    .background(
      HStack {
        Spacer()
        Image("Gastos")
          .resizable()
          .scaledToFit()
          .frame(width: 0.525 * UIScreen.screenWidth, height: 0.287 * UIScreen.screenHeight, alignment: .topTrailing)
      }
        .frame(height: 0.75 * UIScreen.screenHeight, alignment: .topTrailing)
    )
  }
}

struct ProfileActivation_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActivation()

      ProfileActivation()
        .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
    }
}
