//
//  ProfileActivation.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct ProfileActivation: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var btnSelected: Bool = false
    
    var body: some View {
        
        VStack(content: {
            
            ZStack(alignment: .topTrailing ,content: {
                
                VStack(content: {
                    
                    HStack(content: {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                        })
                        .padding(.leading)
                        .padding(.top)
                        
                        Spacer()

                    })
                    .padding(.top, Constants.saTop)
                    
                    HStack(content: {
                        Text("Activate your account and enjoy unlimited benefits on your regular payments")
                            .lineLimit(3)
                            .foregroundColor(.white)
                            .padding(.leading)
                            .padding(.top)
                        
                        Spacer()
                    })

                })
                .zIndex(3)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Image("GastosMark")
                    .foregroundColor(.white)
                    .zIndex(3)
                    .padding(.top, Constants.saTop)

                Path({ path in
                    path.move(to: CGPoint(x: 0, y: 0))
                    path.addLine(to: CGPoint(x: 0, y: (Constants.sH / 3) - 30))
                    path.addLine(to: CGPoint(x: (Constants.sW * 7 / 20), y: (Constants.sH / 3)))
                    // add curve
                    path.addLine(to: CGPoint(x: (Constants.sW * 13 / 20), y: Constants.sH / 3))
                    path.addLine(to: CGPoint(x: Constants.sW, y: (Constants.sH / 3) - 30))
                    path.addLine(to: CGPoint(x: Constants.sW, y: 0))
                    path.addLine(to: CGPoint(x: 0, y: 0))
                })
                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0 / 255, green: 55 / 255, blue: 56 / 255), Color(red: 45 / 255, green: 121 / 255, blue: 109 / 255)]), startPoint: .leading, endPoint: .trailing))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .zIndex(1.0)
                .frame(width: Constants.sW, height: Constants.sH * 0.33, alignment: .top)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                
            })
            .edgesIgnoringSafeArea(.all)
            
            ZStack(content: {
                
                HStack(content: {
                    Spacer()
                    Image("Gastos")
                })
                
                VStack(content: {
                    
                    
                    Button(action: {
                        self.btnSelected.toggle()
                    }, label: {
                        ZStack(content: {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .shadow(color: .gray, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            HStack(content: {
                                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                                Spacer()
                                Text("Prices")
                            })
                            .padding(.horizontal)
                        })
                    })
                    .padding(.horizontal)
                    .frame(height: Constants.sH * 0.1)
                    .padding(.top)
                    
                    Button(action: {
                        self.btnSelected.toggle()
                    }, label: {
                        ZStack(content: {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .shadow(color: .gray, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            HStack(content: {
                                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                                Spacer()
                                Text("Prices")
                            })
                            .padding(.horizontal)
                        })
                    })
                    .padding(.horizontal)
                    .frame(height: Constants.sH * 0.1)
                    
                    Button(action: {
                        self.btnSelected.toggle()
                    }, label: {
                        ZStack(content: {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .shadow(color: .gray, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            HStack(content: {
                                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                                Spacer()
                                Text("Prices")
                            })
                            .padding(.horizontal)
                        })
                    })
                    .padding(.horizontal)
                    .frame(height: Constants.sH * 0.1)
                    
                    Button(action: {
                        self.btnSelected.toggle()
                    }, label: {
                        ZStack(content: {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .shadow(color: .gray, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            HStack(content: {
                                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                                Spacer()
                                Text("Prices")
                            })
                            .padding(.horizontal)
                        })
                    })
                    .padding(.horizontal)
                    .frame(height: Constants.sH * 0.1)

                    HStack(content: {
                        Spacer()
                        Text("* All amount inclusive Gst")
                            .font(.caption2)
                    })
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    Button(action: {
                        self.btnSelected.toggle()
                    }, label: {
                        ZStack(content: {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.yellow)
                                .shadow(color: .gray, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            Text("Proceed")
                        })
                    })
                    .padding(.horizontal)
                    .frame(height: Constants.sH * 0.07)
                    .padding(.bottom, Constants.saBottom)

                })
                
            })
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Spacer()
        })
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ProfileActivation_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActivation()
    }
}
