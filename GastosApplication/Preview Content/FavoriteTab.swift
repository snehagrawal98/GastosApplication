//
//  FavoriteTab.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct FavoriteTab: View {
    
    @State private var selectedTag: Markets = .all
    
    var body: some View {
        
        VStack(content: {

            HStack {
                Text("Elite Market")
                    .font(.title)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.top, Constants.saTop)
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(alignment: .center, spacing: 16, content: {
                    ForEach(0..<Markets.allCases.count) { i in
                        Button(action: {
                            self.selectedTag = Markets.allCases[i]
                        }, label: {
                            Text("\(Markets.allCases[i].rawValue)")
                                .tag(Markets.allCases[i].hashValue)
                                .font(.title2)
                                .foregroundColor((self.selectedTag == Markets.allCases[i]) ? .white : .black)
                                .background(RoundedRectangle(cornerRadius: 8)
                                                .foregroundColor((self.selectedTag == Markets.allCases[i]) ? .orange : .white)
                                )
                        })
                    }
                })

            })
            .frame(height: 30)
            .padding(.leading)
            
            ZStack(content: {
                Color.orange
                    .cornerRadius(20)
            })
            
//            Spacer()
            
        })
        .edgesIgnoringSafeArea(.all)
        
    }
}

enum Markets: String, CaseIterable {
    case all = "All"
    case pubs = "Pubs"
    case clubs = "Clubs"
    case lounges = "Lounges"
    case restaurants = "Restaurant"
}

struct FavoriteTab_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteTab()
    }
}
