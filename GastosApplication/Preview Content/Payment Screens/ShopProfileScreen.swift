//
//  ShopProfileScreen.swift
//  Gastos_user_mvp1
//
//  Created by mnameit on 26/10/21.
//

import SwiftUI

struct ShopProfileScreen: View {
    
    var imagesArray = ["grad2","grad2","grad2"]
    
    var body: some View {
        VStack(alignment: .leading){
            ZStack{
                
                Image("grad2").resizable().aspectRatio(contentMode: .fill).frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 250, alignment: .center).cornerRadius(29, corners: [.bottomLeft,.bottomRight])
                
                HStack{
                
                VStack(alignment: .leading){
                    //Spacer()
                    Text("Cafe Bistro").foregroundColor(.white).font(.system(size: 25)).fontWeight(.medium)
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ForEach(0..<4){_ in
                          Image(systemName: "star.fill").foregroundColor(.yellow)
                            }
                            Image(systemName: "star").foregroundColor(.white)
                    })
                    }
                }.offset(y: 80)
                    Spacer()
                }.padding(.horizontal)
            }
            
            ScrollView(.horizontal){
                HStack(spacing: 20){
            ForEach(imagesArray, id: \.self){ arr in
              
                Image(arr).resizable().aspectRatio(contentMode: .fill).cornerRadius(20).frame(width: 121, height: 73, alignment: .center).shadow(color: .gray, radius: 5, x: 0.0, y: 0.0)
                }
                }.padding()
            }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Beverage").foregroundColor(.white).fontWeight(.medium)
                }).frame(width: 120, height: 35, alignment: .center).background(Color("6")).clipShape(Capsule())
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("20%").foregroundColor(.white).fontWeight(.medium)
                }).frame(width: 70, height: 35, alignment: .center).background(Color("6")).clipShape(Capsule())
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "checkmark.circle.fill").foregroundColor(Color("6")).frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("Delivery").foregroundColor(Color("6")).font(.system(size: 14, weight: .regular))
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "checkmark.circle.fill").foregroundColor(Color("6")).frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("Pick up").foregroundColor(Color("6")).font(.system(size: 14, weight: .regular))
                })
            }.padding(.bottom)
            
            
            HStack{
                VStack(alignment: .leading){
                
                Text("Mansi Gupta").font(.system(size: 25, weight: .regular)).foregroundColor(Color("6"))
                Text("here at your service").foregroundColor(.black).font(.system(size: 15, weight: .regular))
            }
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    VStack{
                        Image(systemName: "phone.fill.arrow.up.right").font(.system(size: 23))
                        Text("Connect").font(.system(size: 10, weight: .regular))
                    }
                }).foregroundColor(Color("6"))
            }.padding(.horizontal)
            
            HStack{
                VStack(alignment: .leading){
                    Text("visit us at:").font(.system(size: 14, weight: .medium)).foregroundColor(Color("6"))
                    Text("WhiteFields  1234 -A , AshokNagar, Pune, Maharashtra").lineLimit(3).font(.system(size: 13, weight: .medium)).foregroundColor(Color.gray)
                }
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    VStack{
                        Image(systemName: "location.fill").font(.system(size: 23))
                        Text("Jump to shop").font(.system(size: 10, weight: .regular))
                    }
                }).foregroundColor(Color("6"))
            }.padding()
            
            Text("Chandigarh").font(.system(size: 15, weight: .medium)).foregroundColor(Color("6")).padding(.horizontal)
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Pay").foregroundColor(.white).font(.system(size: 20, weight: .medium))
            }).frame(minWidth: 0, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxHeight: 45, alignment: .center)
            .background(Color("3")).cornerRadius(30.0).padding()
        }.ignoresSafeArea(.all)
    }
}

struct ShopProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ShopProfileScreen()
    }
}
