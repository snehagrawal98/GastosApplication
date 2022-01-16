//
//  BillingScreen.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct BillingScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack(content: {
            
            ZStack(content: {
                
                Path({ path in
                    path.move(to: CGPoint(x: 0, y: 0))
                    path.addLine(to: CGPoint(x: 0, y: Constants.sH * 0.3))
                    path.addQuadCurve(to: CGPoint(x: Constants.sW, y: Constants.sH * 0.3), control: CGPoint(x: Constants.sW / 2, y: Constants.sH * 0.5))
                    path.addLine(to: CGPoint(x: Constants.sW, y: 0))
                })
                .fill(Color.orange)
                
                
                VStack(content: {
                    
                    HStack(content: {
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "arrow.left")
                                .font(.title)
                                .foregroundColor(.black)
                                .padding(.leading)
                                .padding(.top)
                        })
                        .padding(.top, Constants.saTop)
                        
                        Spacer()

                    })
                    
                    VStack(alignment: .leading, content: {
                        HStack(content: {
                            Text("Amount to Pay")
                            Text("XXX")
                                .padding(.leading)
                        })
                        
                        HStack(content: {
                            Text("Coins")
                            Text("XXX")
                                .padding(.horizontal)
                            Button(action: {
                                
                            }, label: {
                                ZStack(content: {
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                        .frame(width: 80, height: 21, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.green)
                                    Text("Use Coins")
                                })
                            })
                        })
                        
                        HStack(content: {
                            Text("Use 250 Coins To Get 50 Rs Off")
                                .font(.caption)
                            Spacer()
                        })

                    })
                    .padding(.leading, 40)
                    
                    HStack(content: {
                        Spacer()
                        Text("*All Amount Inclusive GST")
                            .font(.caption2)
                    })
                    
                    ScrollView(content: {
                        
                        Button(action: {
                            
                        }, label: {
                            PaymentCard()
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            PaymentCard()
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            PaymentCard()

                        })

                        Button(action: {
                            
                        }, label: {
                            PaymentCard()

                        })

                    })
                    
                    Button(action: {
                        
                    }, label: {
                        ZStack(content: {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .frame(height: Constants.sH * 0.07)
                                .foregroundColor(.orange)
                            Text("Pay")
                                .font(.headline)
                                .foregroundColor(.white)
                        })

                    })
                    .padding()
                })
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            })
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        })
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

    }
}

struct BillingScreen_Previews: PreviewProvider {
    static var previews: some View {
        BillingScreen()
    }
}
