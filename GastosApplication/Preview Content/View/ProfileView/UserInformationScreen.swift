//
//  UserInformationScreen.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct UserInformationScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var email: String = ""
    
    @State private var edittingMode: Bool = false
    
    var body: some View {
        VStack(content: {
            ZStack(content: {
                ZStack(alignment: .center, content: {
                    
                    Image(systemName: "person.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: Constants.sW, height: Constants.sH * 0.38, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .mask(Rectangle()
                                .frame(width: Constants.sW, height: Constants.sH * 0.28, alignment: .center)
                                .offset(y: -Constants.sH * 0.05)
                        )
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .zIndex(-10)
                    
                    
                    Image(systemName: "person.fill")
                        .resizable()
                        .blur(radius: 10)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: Constants.sW, height: Constants.sH * 0.38, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .mask(Rectangle()
                                .frame(width: Constants.sW, height: Constants.sH * 0.1, alignment: .center)
                                .offset(y: Constants.sH * 0.14)
                        )
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .zIndex(10)
                    
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
                            .navigationTitle("")
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                            Spacer()
                            
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "pencil")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .padding(.trailing)
                                    .padding(.top)
                            })
                            
                            
                        })
                        
                        Spacer()
                        
                        HStack(content: {
                            Text("Tarun Singh")
                            Spacer()
                        })
                        .padding(.leading)
                        
                        HStack(content: {
                            Text("Xxxxxxxxxxx4545")
                            Spacer()
                            Text("12/24")
                        })
                        .padding(.horizontal)
                        
                    })
                    .zIndex(15)
                    
                })
                .frame(width: Constants.sW, height: Constants.sH * 0.38, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(25)
                                
            })
            
            HStack(content: {
                Text("Email Adress")
                    .padding()
                Spacer()
            })
            
            ZStack(content: {
                
                if !edittingMode {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        .frame(height: Constants.sH * 0.07)
                        .padding(.horizontal)

                    Text("TarunSing@Gmail.com")

                } else {
                    TextField("TarunSingh@Gmail.com", text: $email)
                        .font(.headline)
                        .padding(.horizontal)
                        .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                        .fill(Color.white)
                                        .frame(height: Constants.sH * 0.07)
                                        .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        )
                        .padding()
                }
                
            })
            
            
            HStack(content: {
                VStack(content: {
                    Text("Date of Birth")
                    ZStack(content: {
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            .frame(width: 150, height: Constants.sH * 0.07)
                        Text("Oct, 17, 1964")
                    })
                })
                Spacer()
                VStack(content: {
                    Text("Gender")
                    ZStack(content: {
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            .frame(width: 100, height: Constants.sH * 0.07)
                        Text("Female")
                    })

                })
            })
            .padding(.horizontal)
            
            HStack(content: {
                Text("Contact Number: ")
                    .padding()
                Spacer()
            })

            
            ZStack(content: {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    .frame(height: Constants.sH * 0.07)
                    .padding(.horizontal)
                Text("+91 27388 43423")
            })


            Spacer()
            
            
        })
        
    }
}

struct UserInformationScreen_Previews: PreviewProvider {
    static var previews: some View {
        UserInformationScreen()
    }
}
