//
//  ProfileActivation.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct ProfileActivationPlans: View {
    
    @Environment(\.dismiss) var dismiss
    
  @State var clickedPlan1: Bool = false
  @State var clickedPlan2: Bool = false
  @State var clickedPlan3: Bool = false
  @State var clickedPlan4: Bool = false

  @State var selectedPlan1: Bool = false
  @State var selectedPlan2: Bool = false
  @State var selectedPlan3: Bool = false
  @State var selectedPlan4: Bool = false
    
    var body: some View {
      NavigationView {
        VStack(spacing: 20) {
          // Top Part
          HStack {
                VStack {
                  // Navigation button
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
            )
              .edgesIgnoringSafeArea(.all)

          // Bottom part
          VStack(spacing: 20) {
            // 28 days plan
            Button(action: {
              self.clickedPlan1.toggle()
              clickedPlan2 = false
              clickedPlan3 = false
              clickedPlan4 = false
            }, label: {
              Section {
                if clickedPlan1 {
                  HStack {
                    VStack(alignment: .leading) {
                      Text("28 Days")
                        .font(.body.weight(.medium))
                        .padding(.bottom, 2)

                      Text("(~ 1 Month)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom, 4)

                      Button(action: {
                        self.selectedPlan1.toggle()
                      }, label: {
                        if !selectedPlan1 {
                          HStack {
                            Text("    ")
                              .background(
                                RoundedRectangle(cornerRadius: 2)
                                  .stroke(lineWidth: 1)
                              )

                            Text("Select")
                          }
                          .foregroundColor(Color("textGreen"))
                        }
                        if selectedPlan1 {
                          HStack {
                            Image(systemName: "checkmark")
                              .resizable()
                              .frame(width: 12, height: 12)
                              .foregroundColor(.white)
                              .padding(4)
                              .background(
                                RoundedRectangle(cornerRadius: 2)
                                  .foregroundColor(Color("textGreen"))
                              )

                            Text("Selected")
                              .fontWeight(.semibold)
                          }
                          .foregroundColor(Color("textGreen"))
                        }
                      })
                    }

                    Spacer()

                    HStack {
                      VStack(alignment: .leading, spacing: 6) {
                        Text("Subtotal")
                          .font(.subheadline)
                          .foregroundColor(.gray)

                        Text("Cost")
                          .font(.subheadline)
                          .foregroundColor(.gray)

                        Text("Discount")
                          .font(.subheadline)
                          .foregroundColor(.gray)
                      }

                      VStack(alignment: .leading, spacing: 4) {
                        Text("Rs 119")
                          .fontWeight(.semibold)
                          .foregroundColor(Color("textGreen"))

                        Text("Rs 119")
                          .fontWeight(.semibold)

                        Text("Rs 0")
                          .fontWeight(.semibold)
                      }
                    }
                  }
                  .padding()
                  .frame(width: 0.88 * UIScreen.screenWidth, height: 0.167 * UIScreen.screenHeight, alignment: .center)
                  .background(
                    RoundedRectangle(cornerRadius: 20)
                      .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
                  )
                  .background(Color.white)
                  //.onTapGesture(perform: selectedPlan1.toggle())
                } else if !clickedPlan1 {
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
                }
              }
              .foregroundColor(.black)
            })

             //98 days plan
            Button(action: {
              self.clickedPlan2.toggle()
              clickedPlan1 = false
              clickedPlan3 = false
              clickedPlan4 = false
            }, label: {
              Section {
                if clickedPlan2 {
                  HStack {
                    VStack(alignment: .leading) {
                      Text("98 Days")
                        .font(.body.weight(.medium))
                        .padding(.bottom, 2)

                      Text("(~ 3 Months +)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom, 4)

                      Button(action: {
                        self.selectedPlan2.toggle()
                      }, label: {
                        if !selectedPlan2 {
                          HStack {
                            Text("    ")
                              .background(
                                RoundedRectangle(cornerRadius: 2)
                                  .stroke(lineWidth: 1)
                              )

                            Text("Select")
                          }
                          .foregroundColor(Color("textGreen"))
                        }
                        if selectedPlan2 {
                          HStack {
                            Image(systemName: "checkmark")
                              .resizable()
                              .frame(width: 12, height: 12)
                              .foregroundColor(.white)
                              .padding(4)
                              .background(
                                RoundedRectangle(cornerRadius: 2)
                                  .foregroundColor(Color("textGreen"))
                              )

                            Text("Selected")
                              .fontWeight(.semibold)
                          }
                          .foregroundColor(Color("textGreen"))
                        }
                      })
                    }

                    Spacer()

                    HStack {
                      VStack(alignment: .leading, spacing: 6) {
                        Text("Subtotal")
                          .font(.subheadline)
                          .foregroundColor(.gray)

                        Text("Cost")
                          .font(.subheadline)
                          .foregroundColor(.gray)

                        Text("Discount")
                          .font(.subheadline)
                          .foregroundColor(.gray)
                      }

                      VStack(alignment: .leading, spacing: 4) {
                        Text("Rs 369")
                          .fontWeight(.semibold)
                          .foregroundColor(Color("textGreen"))

                        Text("Rs 416.5")
                          .fontWeight(.semibold)

                        HStack(alignment: .bottom, spacing: 0) {
                          Text("Rs 47.5")
                            .fontWeight(.semibold)

                          Text("~12%")
                            .font(.caption2)
                            .foregroundColor(.red)
                        }
                      }
                    }
                  }
                  .padding()
                  .frame(width: 0.88 * UIScreen.screenWidth, height: 0.167 * UIScreen.screenHeight, alignment: .center)
                  .background(
                    RoundedRectangle(cornerRadius: 20)
                      .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
                  )
                  .background(Color.white)
                } else if !clickedPlan2 {
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
                }
              }
              .foregroundColor(.black)
            })

            // 188 days plan
            Button(action: {
              self.clickedPlan3.toggle()
              clickedPlan1 = false
              clickedPlan2 = false
              clickedPlan4 = false
            }, label: {
              Section {
                if clickedPlan3 {
                  HStack {
                    VStack(alignment: .leading) {
                      Text("188 Days")
                        .font(.body.weight(.medium))
                        .padding(.bottom, 2)

                      Text("(~ 6 Months +)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom, 4)

                      Button(action: {
                        self.selectedPlan3.toggle()
                      }, label: {
                        if !selectedPlan3 {
                          HStack {
                            Text("    ")
                              .background(
                                RoundedRectangle(cornerRadius: 2)
                                  .stroke(lineWidth: 1)
                              )

                            Text("Select")
                          }
                          .foregroundColor(Color("textGreen"))
                        }
                        if selectedPlan3 {
                          HStack {
                            Image(systemName: "checkmark")
                              .resizable()
                              .frame(width: 12, height: 12)
                              .foregroundColor(.white)
                              .padding(4)
                              .background(
                                RoundedRectangle(cornerRadius: 2)
                                  .foregroundColor(Color("textGreen"))
                              )

                            Text("Selected")
                              .fontWeight(.semibold)
                          }
                          .foregroundColor(Color("textGreen"))
                        }
                      })
                    }

                    Spacer()

                    HStack {
                      VStack(alignment: .leading, spacing: 6) {
                        Text("Subtotal")
                          .font(.subheadline)
                          .foregroundColor(.gray)

                        Text("Cost")
                          .font(.subheadline)
                          .foregroundColor(.gray)

                        Text("Discount")
                          .font(.subheadline)
                          .foregroundColor(.gray)
                      }

                      VStack(alignment: .leading, spacing: 4) {
                        Text("Rs 669")
                          .fontWeight(.semibold)
                          .foregroundColor(Color("textGreen"))

                        Text("Rs 799")
                          .fontWeight(.semibold)

                        HStack(alignment: .bottom, spacing: 0) {
                          Text("Rs 130")
                            .fontWeight(.semibold)

                          Text("~16%")
                            .font(.caption2)
                            .foregroundColor(.red)
                        }
                      }
                    }
                  }
                  .padding()
                  .frame(width: 0.88 * UIScreen.screenWidth, height: 0.167 * UIScreen.screenHeight, alignment: .center)
                  .background(
                    RoundedRectangle(cornerRadius: 20)
                      .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
                  )
                  .background(Color.white)
                } else if !clickedPlan3 {
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
                }
              }
              .foregroundColor(.black)
            })

            // 368 days plan
            Button(action: {
              self.clickedPlan4.toggle()
              clickedPlan1 = false
              clickedPlan2 = false
              clickedPlan3 = false
            }, label: {
              Section {
                if clickedPlan4 {
                  HStack {
                    VStack(alignment: .leading) {
                      Text("368 Days")
                        .font(.body.weight(.medium))
                        .padding(.bottom, 2)

                      Text("(~ 12 Months +)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom, 4)

                      Button(action: {
                        self.selectedPlan4.toggle()
                      }, label: {
                        if !selectedPlan4 {
                          HStack {
                            Text("    ")
                              .background(
                                RoundedRectangle(cornerRadius: 2)
                                  .stroke(lineWidth: 1)
                              )

                            Text("Select")
                          }
                          .foregroundColor(Color("textGreen"))
                        }
                        if selectedPlan4 {
                          HStack {
                            Image(systemName: "checkmark")
                              .resizable()
                              .frame(width: 12, height: 12)
                              .foregroundColor(.white)
                              .padding(4)
                              .background(
                                RoundedRectangle(cornerRadius: 2)
                                  .foregroundColor(Color("textGreen"))
                              )

                            Text("Selected")
                              .fontWeight(.semibold)
                          }
                          .foregroundColor(Color("textGreen"))
                        }
                      })
                    }

                    Spacer()

                    HStack {
                      VStack(alignment: .leading, spacing: 6) {
                        Text("Subtotal")
                          .font(.subheadline)
                          .foregroundColor(.gray)

                        Text("Cost")
                          .font(.subheadline)
                          .foregroundColor(.gray)

                        Text("Discount")
                          .font(.subheadline)
                          .foregroundColor(.gray)
                      }

                      VStack(alignment: .leading, spacing: 4) {
                        Text("Rs 1269")
                          .fontWeight(.semibold)
                          .foregroundColor(Color("textGreen"))

                        Text("Rs 1564")
                          .fontWeight(.semibold)

                        HStack(alignment: .bottom, spacing: 0) {
                          Text("Rs 295")
                            .fontWeight(.semibold)

                          Text("~19%")
                            .font(.caption2)
                            .foregroundColor(.red)
                        }
                      }
                    }
                  }
                  .padding()
                  .frame(width: 0.88 * UIScreen.screenWidth, height: 0.167 * UIScreen.screenHeight, alignment: .center)
                  .background(
                    RoundedRectangle(cornerRadius: 20)
                      .stroke(Color("textGreen").opacity(0.2), lineWidth: 1)
                  )
                  .background(Color.white)
                } else if !clickedPlan4 {
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
                }
              }
              .foregroundColor(.black)
            })

            Spacer()
//            Spacer()
//            Spacer()

//            NavigationLink(destination: {
//              ActivationPaymentView()
//                .navigationBarHidden(true)
//                .navigationBarBackButtonHidden(true)
//            }, label: {
//              BottomButton(buttonText: "Procced", buttonColor: "textGreen", textColor: "white")
//            })
            //Spacer()
          }
          .frame(width: UIScreen.screenWidth)//, height: 0.7 * UIScreen.screenHeight)
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

          // Bottom button
          VStack {
            NavigationLink(destination: {
              ActivationPaymentView()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            }, label: {
              BottomButton(buttonText: "Procced", buttonColor: "textGreen", textColor: "white")
            })
          }
          .padding(.bottom)
        } //: VSTACK
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
      } //: NAV
    }
}

struct ProfileActivationPlans_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActivationPlans()

      ProfileActivationPlans()
        .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
    }
}
