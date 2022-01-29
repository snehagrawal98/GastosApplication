//
//  HomeTab.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI
import Firebase

struct HomeTab: View {

  @AppStorage("log_Status") var status = false
    
    private var columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        
        NavigationView(content: {
            
        VStack(content: {
            HStack {
                Text("Hey Tarun!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()

                Button(action: {
                      // logging out
                      try? Auth.auth().signOut()
                      withAnimation{ status = false }
                    }, label: {
                      Text("LogOut")
                    })

                
                NavigationLink(
                    destination: UserProfile(),
                    label: {
                        Image(systemName: "bell.badge")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.green)

                    })
                    .navigationTitle("")
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal)
            
            
            NavigationLink(
                destination: UserProfile(),
                label: {
                    ZStack {
                        HStack(content: {
                            VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                                Text("Gastos")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.title)
                                    .padding(.leading)
                                    .padding(.top)
                                Spacer()
                                Text("Tarun Singh")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .padding(.leading)
                                    .padding(.bottom)
                                Text("1234 5678 1234 5678")
                                    .foregroundColor(.white)
                                    .font(.body)
                                    .padding(.leading)
                                Text("Valid Till: 12-6-2021")
                                    .foregroundColor(.white)
                                    .font(.body)
                                    .padding(.leading)
                                    .padding(.bottom)
                            })
                            Spacer()
                            VStack {
                                
                                Spacer()
                                Text("LPI")
                                    .foregroundColor(.white)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .italic()
                                    .font(.title)
                                    .padding(.trailing)
                                    .padding(.bottom)
                            }
                        })
                        .zIndex(5)
                        
                        VStack {
                            HStack {
                                Spacer()
                                Image("GastosMark")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: Constants.sH * 0.2)
                            }
                            Spacer()
                        }
                        .zIndex(5)
                            
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("5"))
                    }
                    .frame(width: Constants.sW - 64, height: Constants.sH * 0.3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                })
                .navigationTitle("")
                .navigationBarHidden(true)
//                .navigationBarBackButtonHidden(true)
            
            LazyVGrid(columns: columns, content: {
                
                ForEach(0..<7) { i in
                    
                    NavigationLink(
                        destination: Places(),
                        label: {
                            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                                
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: Constants.sH * 0.08, height: Constants.sH * 0.08, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Text("\(HomeCategories.allCases[i].rawValue)")
                                    .fixedSize()
                                    .font(.caption)
                                    .lineLimit(0)
                            })

                        })
                        .navigationBarHidden(true)
                        .navigationTitle("")
                        .navigationBarBackButtonHidden(true)
                        .navigationBarTitle("")
                }
            })
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(0..<10) { i in
                        Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            .frame(width: 230, height: Constants.sH * 0.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(10)
                            .shadow(color: .black, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    }
                    .padding()
                }
            })
            .edgesIgnoringSafeArea(.all)
            .frame(height: Constants.sH * 0.2)
            .padding(.leading)
            
            Spacer()

        })
            
        })
    }
}

enum HomeCategories: String, CaseIterable {
    case food = "Food"
    case beverage = "Beverage"
    case clothing = "Clothing"
    case salon = "Salon"
    case stores = "Stores"
    case health = "Health"
    case others = "Others"
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab()
    }
}
