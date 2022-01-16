////
////  PaymentDecline.swift
////  Gastos_user_mvp1
////
////  Created by mnameit on 20/10/21.
////
//
//import SwiftUI
//
//struct PaymentDecline: View {
//    var body: some View {
//        NavigationView{
//            
//        ZStack{
//            
//            Image("decline").resizable().frame(width: 140, height: 140, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).zIndex(1).offset(x: 100)
//            
//            
//            VStack{
//                
//                VStack{
//                
//              
//                    
//                    Image(systemName: "xmark.circle.fill").foregroundColor(.red).font(.system(size:70)).offset(y: -19)
//                
//                Text("Cafe Bistro").foregroundColor(Color("5")).font(.system(size: 25)).fontWeight(.medium)
//                HStack{
//                    Text("Billed Amount").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15))
//                    Spacer()
//                    Text("xxx").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15))
//                }.padding(.horizontal, 40).padding(.top, 30)
//                HStack{
//                    Text("Paid Amount").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15))
//                    Spacer()
//                    Text("xxx").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15))
//                }.padding(.horizontal, 40).padding(.top, 10)
//                HStack{
//                    Text("Date & Time").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15)).padding(.top, 10)
//                    Spacer()
//                    Text("xxx").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 15))
//                }.padding(.horizontal, 40).padding(.top, 10)
//                    
//                Spacer()
////                var style = StrokeStyle(lineWidth: 2)
////                style.dash = [3]
////
////                Line().stroke(Color.black, style: style)
//                    
//                    
//                    Text(".......................................................").offset(y: -25)
//                    
//                    
//                    
//                }.padding().background(Color("8").frame(width: 300, height: 380).cornerRadius(30.0))
//                
//                VStack{
//                    Text("Transaction failed").font(.system(size: 20)).foregroundColor(Color("5")).fontWeight(.medium).padding(.vertical, 40)
//                    Image(systemName: "arrow.clockwise").foregroundColor(Color("5"))
//                }.padding().background(Color("8").frame(width: 300, height: 150).cornerRadius(30.0)).offset(y:-50)
//                Spacer()
//            }
//           
//        }.offset(y: -50).navigationBarItems(leading: Image(systemName: "arrow.backward").foregroundColor(Color("5")))
//            
//        }
//    }
//}
//
//struct PaymentDecline_Previews: PreviewProvider {
//    static var previews: some View {
//        PaymentDecline()
//    }
//}
