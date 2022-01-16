//
//  PaymentSuccess.swift
//  Gastos_user_mvp1
//
//  Created by mnameit on 20/10/21.
//

import SwiftUI

struct PaymentSuccess: View {
    var body: some View {
        NavigationView{
            
        ZStack{
            
            Image("paid").zIndex(1).offset(x: 90, y: 60)
            
            VStack{
                
                VStack{
                
                ZStack{
                    
                Image("greenEllipse")
                    Image(systemName: "checkmark").foregroundColor(.white).font(.system(size: 35))
                }
                Text("Cafe Bistro").foregroundColor(Color("5")).font(.system(size: 25)).fontWeight(.medium)
                HStack{
                    Text("Billed Amount").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15))
                    Spacer()
                    Text("xxx").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15))
                }.padding(.horizontal, 40).padding(.top, 30)
                HStack{
                    Text("Paid Amount").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15))
                    Spacer()
                    Text("xxx").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15))
                }.padding(.horizontal, 40).padding(.top, 10)
                HStack{
                    Text("Date & Time").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15)).padding(.top, 10)
                    Spacer()
                    Text("xxx").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15))
                }.padding(.horizontal, 40).padding(.top, 10)
                HStack{
                    Text("Coins Received").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15))
                    Spacer()
                    Text("xxx").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15))
                }.padding(.horizontal, 40).padding(.top, 10)
                
                HStack{
                    Text("Rate").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15))
                    Spacer()
                    HStack{
                        Image(systemName: "star.fill").foregroundColor(.black).font(.system(size: 20))
                        Image(systemName: "star.fill").foregroundColor(.black).font(.system(size: 20))
                        Image(systemName: "star.fill").foregroundColor(.black).font(.system(size: 20))
                        Image(systemName: "star.fill").foregroundColor(.black).font(.system(size: 20))
                        Image(systemName: "star").foregroundColor(.black).font(.system(size: 20))
                    }
                    
                }.padding(.horizontal, 40).padding(.top, 10)
//
//                var style = StrokeStyle(lineWidth: 2)
//                style.dash = [3]
//
//                Line().stroke(Color.black, style: style)
                    
                    
                Text(".......................................................")
                    
                    
                }.padding().background(Color("8").frame(width: 300, height: 320).cornerRadius(30.0).offset(y: 14))
                
                VStack{
                    Text("Transaction Successful").font(.system(size: 20)).foregroundColor(Color("5")).fontWeight(.medium).padding(.vertical, 40)
                    Text("Back To Home").font(.system(size: 20)).foregroundColor(Color("5")).fontWeight(.medium)
                }.padding().background(Color("8").frame(width: 300, height: 190).cornerRadius(30.0)).offset(y: -14)
                Spacer()
            }
           
        }.offset(y: -30).navigationBarItems(leading: Image(systemName: "arrow.backward").foregroundColor(Color("5")))
            
        }
    }
}

struct PaymentSuccess_Previews: PreviewProvider {
    static var previews: some View {
        PaymentSuccess()
    }
}

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        let start = CGPoint(x: 90, y: rect.midY)
        let end = CGPoint(x: 320, y: rect.midY)

        return Path { p in
            p.move(to: start)
            p.addLine(to: end)
        }
    }
}
