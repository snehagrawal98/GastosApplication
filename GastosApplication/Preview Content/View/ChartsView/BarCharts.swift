//
//  BarCharts.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct BarCharts: View {
    
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
                        Image(systemName: "arrow.left")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .padding(.leading)
                            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        
                        Text("Food")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        
                        Spacer()
                    })
                    
                    HStack(content: {
                        VStack(content: {
                            ZStack(content: {
                                Circle()
                                    .fill(Color(.systemPink))
                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .overlay(Circle()
                                                .fill(Color(.systemOrange))
                                                .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/))
                                Text("56")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)

                            })
                                
                            Text("Total Savings")
                        })
                        VStack(content: {
                            
                            ZStack(content: {
                                Circle()
                                    .fill(Color(.systemPink))
                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .overlay(Circle()
                                                .fill(Color(.systemOrange))
                                                .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/))
                                Text("156")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)

                            })


                            Text("Total Coins ")
                        })
                    })

                    Spacer()
                })
                

            })
            .background(Color.blue)
           // BarChartsWindow()
                .frame(height: 200)
                .padding()
                .background(Color.blue)
            Spacer()
        })
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct BarCharts_Previews: PreviewProvider {
    static var previews: some View {
        BarCharts()
    }
}
