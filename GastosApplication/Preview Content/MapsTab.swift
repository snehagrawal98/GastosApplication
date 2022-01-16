//
//  MapsTab.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct MapsTab: View {
    
    @State private var selectedTag: LocalMarkets = .all
    
    private var columns: [GridItem] = [ GridItem(.flexible()), GridItem(.flexible())
    ]
    
    var body: some View {
        
        NavigationView(content: {
       
        
        VStack(content: {
            HStack(content: {
                Text("Local Market")
                    .padding(.leading)
                    .padding(.top, Constants.saTop)
                    .font(.title)
                Spacer()
                
                NavigationLink(destination: MapScreen()) {                     VStack(alignment: .leading, spacing: nil, content: {
                    Image(systemName: "star.fill")
                        .padding(.trailing)
                        .font(.headline)
                    Text("map")
                        .font(.caption)
                    })
                .navigationBarHidden(true)
                .navigationTitle("")
                .padding(.top, Constants.saTop)
                
            
                }
            })
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(alignment: .center, spacing: 16, content: {
                    ForEach(0..<LocalMarkets.allCases.count) { i in
                        Button(action: {
                            self.selectedTag = LocalMarkets.allCases[i]
                        }, label: {
                            Text("\(LocalMarkets.allCases[i].rawValue)")
                                .tag(LocalMarkets.allCases[i].hashValue)
                                .font(.title2)
                                .foregroundColor((self.selectedTag == LocalMarkets.allCases[i]) ? .white : .black)
                                .background(RoundedRectangle(cornerRadius: 10)
                                                .foregroundColor((self.selectedTag == LocalMarkets.allCases[i]) ? .orange : .white)
                                )
                        })
                    }
                })

            })
            .frame(height: 30)
            .padding(.leading)
            
            HStack(content: {
                Text("Shops Nearby")
                    .padding(.leading)
                Spacer()
            })

            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(0..<10) { i in
                        Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            .frame(width: Constants.sH * 0.12, height: Constants.sH * 0.12, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(10)
                            .shadow(color: .black, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.leading)
                }
            })

            ScrollView(.vertical) {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(0..<8) { i in
                        Color.green
                            .frame(height: Constants.sH * 0.285)
                            .cornerRadius(10)
                    }
                }
            }
            .padding()
            .edgesIgnoringSafeArea(.all)

           

        })
        .padding(.top)
        .edgesIgnoringSafeArea(.all)
            
        })

    }
        
}

enum LocalMarkets: String, CaseIterable {
    case all = "All"
    case drink = "Drink"
    case food = "Food"
    case clothes = "Clothes"
    case salvation = "Salvation"
}

struct MapsTab_Previews: PreviewProvider {
    static var previews: some View {
        MapsTab()
    }
}
