//
//  DealsTab.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct DealsTab: View {
    var body: some View {
        VStack(alignment: .center,
               spacing: nil,
               content: {
                
            Deals()
                
            HStack(content: {
                Text("Deals/Offers")
                Spacer()
                Button("View All") {
                   // button clicked
                }
                .foregroundColor(.purple)
            })
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(0..<10) { i in
                        Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            .frame(width: Constants.sW * 0.73, height: Constants.sH * 0.225, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(10)
                            .shadow(color: .black, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    }
                    .padding()
                }
            })
            .frame( height: Constants.sH * 0.225)
            .padding(.leading)
              
            HStack(content: {
                Text("Recomended")
                Spacer()
                Button("View All") {
                    // button clicked
                }
                .foregroundColor(.purple)
            })
            .padding(.horizontal)
            .padding(.top)
                
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(0..<10) { i in
                        Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            .frame(width: Constants.sW * 0.53, height: Constants.sH * 0.178, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(10)
                            .shadow(color: .black, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)

                    }
                    .padding()
                }
            })
            .frame( height: Constants.sH * 0.178)
            .padding(.leading)


            Spacer()
        })
            .edgesIgnoringSafeArea(.all)
    }
}

struct DealsTab_Previews: PreviewProvider {
    static var previews: some View {
        DealsTab()
    }
}
