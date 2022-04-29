//
//  ReferAndEarn.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/19/21.
//

import SwiftUI

struct ReferAndEarn: View {
    
    @Environment(\.dismiss) var dismiss
  @State var referCode = ""
    
    var body: some View {
        
      NavigationView {
        VStack {
              ZStack(content: {
                  Path({ path in
                      path.move(to: CGPoint(x: 0, y: 0))
                      path.addLine(to: CGPoint(x: 0, y: Constants.sH * 0.3))
                      path.addQuadCurve(to: CGPoint(x: Constants.sW, y: Constants.sH * 0.3), control: CGPoint(x: Constants.sW / 2, y: Constants.sH * 0.55))
                      path.addLine(to: CGPoint(x: Constants.sW, y: 0))
                  })
                  .fill(Color("textGreen").opacity(0.2))

                  VStack {
                      Image("Refer")
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(width: Constants.sH * 0.28, height: Constants.sH * 0.26, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                          .padding(.top, Constants.saTop)

                      Text("50 Coins")
                      .font(.title.weight(.semibold))
                      .foregroundColor(Color("deepGreen"))

                      Spacer()
                  }
                  .offset(y: 20)

                  VStack(content: {
                      HStack {
                          Button(action: {
                              dismiss()
                          }, label: {
                              Image(systemName: "arrow.left")
                                  .font(.title)
                                  .foregroundColor(.black)
                                  .padding(.leading)
                                  .padding(.top)
                          })
                          .padding(.top, Constants.saTop)

                          Spacer()
                      }
                      Spacer()
                  })
              })
              .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
              .frame(height: Constants.sH * 0.4)

              VStack {
                Text("Refer & Earn")
                  .font(.title.weight(.semibold))

                // Refer
                HStack {
                  Text("XBYAHSN")
                    .font(.title3.weight(.semibold))
                    .foregroundColor(Color("deepGreen"))
                    .padding(.leading)

                  Spacer()
                  VStack(spacing: -6) {
                    ForEach(1..<3) { i in
                      Text("|")
                    }
                  }
                  Spacer()

                  Image("ShareSymbol")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(.trailing)
                }
                .frame(width: 0.49 * UIScreen.screenWidth, height: 0.062 * UIScreen.screenHeight)
                .overlay(
                  RoundedRectangle(cornerRadius: 10)
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                )
                .padding(.bottom)

                VStack {
                  Text("Apply the Refferal code here")

                  HStack {
                    TextField("Enter Code", text: $referCode).onTapGesture {
                        self.hideKeyboard()
                    }
                      .foregroundColor(Color("deepGreen"))

                    Button(action: {}, label: {
                      Text("Validate")
                        .font(.caption.weight(.regular))
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Color("textGreen"))
                        .cornerRadius(8)
                    })
                  }
                  .padding()
                  .background(
                    RoundedRectangle(cornerRadius: 5)
                      .foregroundColor(.white)
                      .shadow(color: .gray.opacity(0.5), radius: 3)
                  )
                  .padding(.horizontal)
                }
                .padding(.bottom)

                VStack(alignment: .leading, spacing: 15) {
                  Text("Frequently Asked Questions")
                    .font(.title3.weight(.semibold))
                    .padding(.leading)

                  VStack(alignment: .leading, spacing: 8) {
                    Text("What is Refer and Rarn Program?")

                    Text("How it works?")

                    Text("Where can i use these coins?")
                  }
                  .font(.body.weight(.semibold))
                  .padding(.leading)
                }
                .foregroundColor(Color("deepGreen"))
                .frame(width: UIScreen.screenWidth, alignment: .leading)
              }
              Spacer()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
      }
    }
}

struct ReferAndEarn_Previews: PreviewProvider {
    static var previews: some View {
        ReferAndEarn()
    }
}
