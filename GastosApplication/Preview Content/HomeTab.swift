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
    
    @State var image = ["Rectangle1","Rectangle2","Rectangle3","Rectangle4","Rectangle5"]
    @State var categories = ["Sip & Bite","Beauty & Care","Style & Trends","Haelth & Medico","Daily Needs"]
    var body: some View {
        
        
        NavigationView(content: {
            
        VStack(content: {
            HStack {
                Text("Hey Tarun!")
                    .font(.system(size: 25, weight: .regular, design: .default))
                Spacer()

//                Button(action: {
//                      // logging out
//                      try? Auth.auth().signOut()
//                      withAnimation{ status = false }
//                    }, label: {
//                      Text("LogOut")
//                    })

                
                NavigationLink(
                    destination: UserProfile(),
                    label: {
                        Image(systemName: "bell.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.black)

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
                    .frame(width: Constants.sW - 24, height: Constants.sH * 0.3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                })
                .navigationTitle("")
                .navigationBarHidden(true)
//                .navigationBarBackButtonHidden(true)
            
            HStack(spacing:-15){
                
                ForEach(image, id: \.self) { i in
                    
                    NavigationLink(
                        destination: Places(),
                        label: {
                            ZStack {
                                
                                
                                Image(i).resizable()
                                    .frame(width: 95, height:200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                               
                            }

                        })
                
                       
                
            }
            }
            
            .padding(.top)
            
//            ScrollView(.horizontal, showsIndicators: false, content: {
//                HStack {
//                    ForEach(0..<10) { i in
//                        Rectangle()
//                            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
//                            .frame(width: 230, height: Constants.sH * 0.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                            .cornerRadius(10)
//                            .shadow(color: .black, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
//                    }
//                    .padding()
//                }
//            })
            
            
            Spacer()

        })
            
        })
    }
}

enum HomeCategories: String, CaseIterable {
    case food = "Sip and Bite"
    case beauty = "Beauty & Care"
    case clothing = "Style & Trends"
    case medical = "Health and Medico"
    case daily = "Daily Needs"
    
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab()
    }
}
