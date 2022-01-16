//
//  PieCharts.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 11/5/21.
//

import SwiftUI

struct PieCharts: View {
    
    var body: some View {
        
        HStack(content: {
            
            VStack(content: {
                
                Button(action: {
                    
                }, label: {
                    PieChartButtons(label: "Salon & Spa", lineColor: Color(.systemPink))
                })
                
                Button(action: {
                    
                }, label: {
                    PieChartButtons(label: "Health", lineColor: Color(.systemIndigo))
                })
                
                Button(action: {
                    
                }, label: {
                    PieChartButtons(label: "Others", lineColor: Color(.systemGray))
                })

            })
            
            VStack(content: {
                Text("Categories Of Payments")
                    .fontWeight(.bold)
                
                PieChartWindow()
                    .frame(width: (Constants.sW / 2) + 10, height: (Constants.sW / 2) + 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Button(action: {
                    
                }, label: {
                    PieChartButtons(label: "Food", lineColor: .blue)
                })
            })
            
            VStack(content: {
                Button(action: {
                    
                }, label: {
                    PieChartButtons(label: "Beverages", lineColor: Color(.systemPink))
                })
                
                Button(action: {
                    
                }, label: {
                    PieChartButtons(label: "Store", lineColor: .yellow)
                })
                
                Button(action: {
                    
                }, label: {
                    PieChartButtons(label: "Clothing", lineColor: Color(.systemTeal))
                })
                
            })
        })
    }
}

struct PieChartButtons: View {
    var label: String
    var lineColor: Color
    
    var body: some View {
        ZStack(content: {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white).shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/).frame(height: 40)
            VStack(spacing: nil, content: {
                Text("\(label)").fixedSize().frame(height: 10).foregroundColor(.black)
                Rectangle().frame(width: 40, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(lineColor)
            })
        }).frame(width: 70, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(.vertical)
    }
}

struct PieCharts_Previews: PreviewProvider {
    static var previews: some View {
        PieCharts()
    }
}
