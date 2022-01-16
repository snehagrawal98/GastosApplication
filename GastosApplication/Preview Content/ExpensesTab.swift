//
//  ExpensesTab.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct ExpensesTab: View {
    
    @State private var tagsAvailable: Bool = false
    
    init() {
        UINavigationBar.appearance().isHidden = true
        UINavigationBar.appearance().shadowImage = UIImage()
        UITableView.appearance().separatorStyle = .none
        UITableView.appearance().separatorColor = .white
        
    }
    
    var body: some View {
        
        NavigationView(content: {
            
            VStack(content: {
                    HStack {
                        Text("Expenses")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.green)
                            .padding(.leading)
                        Spacer()
                        Button(action: {
                            withAnimation {
                                tagsAvailable.toggle()
                            }
                        }, label: {
                            Image(systemName: "slider.horizontal.3")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .padding(.trailing)
                                .foregroundColor(.black)
                        })
                    }
                
                if tagsAvailable {
                    
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], content: {
                        Text("first")
                            .frame(width: 80, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(20)
                            
                        Text("second")
                            .frame(width: 80, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(20)

                        Text("third ")
                            .frame(width: 80, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(20)


                        Text("forth ")
                            .frame(width: 80, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(20)
                            .padding(.top, 2)


                        Text("fifth ")
                            .frame(width: 80, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(20)
                            .padding(.top, 2)
                })
                    
                }
                    
                    ScrollView(content: {
                    LazyVStack(content: {
                        ForEach(1...10, id: \.self) { count in
                            
                            NavigationLink(destination: ShopProfile()) {
                            ZStack(content: {
                                RoundedRectangle(cornerRadius: 25.0)
                                    .foregroundColor(Color.white)
                                    .frame(height: Constants.sH * 0.11)
                                    .shadow(color: .gray, radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                                    .padding(.horizontal, 8)
                
                                
                                HStack(content: {
                                    
                                    Circle()
                                        .frame(height: Constants.sH * 0.11 - 10)
                                        .foregroundColor(.gray)
                                    
                                    
                                    VStack(alignment: .leading, content: {
                                        Text("Sweet Spot")
                                        
                                        Spacer()
                                        
                                        Text("$ 1000")
                                            .font(.caption)
                                    })
                                    .padding(.vertical, 8)
                                    .offset(x: -25)
                                    
                                    Spacer()
                                        
                                    VStack(content: {
                                        Text("26 Dec 2020")
                                            .font(.caption)
                                        
                                        Spacer()
                                        
                                        Circle()
                                    })
                                    .padding(.vertical, 8)

                                    
                                })

                            })
                            .padding(.top)
                            
                            }
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                            .edgesIgnoringSafeArea(.all)
                        }
                    })
                })
                    

                })

           
        })
        
    }
}

struct ExpensesTab_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesTab()
    }
}
