//
//  UserProfile.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct UserProfile: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationView(content: {
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
                .padding(.top, Constants.saTop)
                                        
                    Spacer()
                })
                
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .foregroundColor(Color(.systemGreen))
                    .zIndex(2)
                
                NavigationLink(
                    destination: UserInformationScreen(),
                    label: {
                        ZStack(content: {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .frame(height: Constants.sH * (0.19))
                                .foregroundColor(Color(.systemTeal))
                            HStack(content: {
                                VStack(alignment: .leading ,content: {
                                    
                                    Text("Name")

                                    Text("Phone No")
                                    
                                    Text("Email Id")


                                })
                                .padding(.trailing)
                                
                                VStack(alignment: .leading ,content: {
                                    
                                    Text("Xxxx")
                                    
                                    Text("Xxxx")

                                    Text("Xxxx")

                                })
                                .padding(.trailing)

                                
                                Circle()
                                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding(.leading)

                            })

                        })
                        .offset(y: -30)
                        .padding(.horizontal)
                    })
                
                
                
                VStack(content: {
                    
                    ZStack(content: {
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .shadow(color: .gray, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            .frame(height: Constants.sH * (0.09))
                        
                        VStack(content: {
                            HStack(content: {
                                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                                    .padding(.leading)
                                Spacer()
                            })
                            HStack(content: {
                                Text("Inactive")
                                    .padding(.leading)
                                Spacer()
                                NavigationLink(
                                    destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                                    label: {
                                        Text("Active Now")
                                    })
                                    .padding(.trailing)
                            })
                        })

                    })
                    .padding(.bottom)
                    .padding(.horizontal)
                    
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            ZStack(content: {
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .shadow(color: .gray, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                                    .frame(height: Constants.sH * (0.09))
                                
                                HStack(content: {
                                    Image(systemName: "person.fill")
                                        .padding(.leading)
                                    Text("Expence Manager")
                                    Spacer()
                                })

                            })
                            .padding(.bottom)
                            .padding(.horizontal)

                        })
                    
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            ZStack(content: {
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .shadow(color: .gray, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                                    .frame(height: Constants.sH * (0.09))
                                
                                HStack(content: {
                                    Image(systemName: "person.fill")
                                        .padding(.leading)
                                    Text("Refer & Earn")
                                    Spacer()
                                })

                            })
                            .padding(.bottom)
                            .padding(.horizontal)

                        })


                    HStack(content: {
                        NavigationLink(
                            destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                            label: {
                                Text("Terms and Conditions")
                            })
                            .padding(.leading)
                        Spacer()

                    })
                    
                    HStack(content: {
                        NavigationLink(
                            destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                            label: {
                                Text("About Us")
                            })
                            .padding(.leading)
                        
                        Spacer()

                    })
                    
                    Spacer()
                    
                    HStack(content: {
                        NavigationLink(
                            destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                            label: {
                                Text("Log Out")
                            })
                            .padding(.leading)
                        
                        Spacer()

                    })
                    .padding(.bottom)


                })
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

            })
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        })
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
