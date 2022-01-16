//
//  Deals.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct Deals: View {
    var body: some View {
        ZStack(alignment: .topLeading){
            
            Image("Bee")
                .frame(width: 100, height: 100, alignment: .center)
                .zIndex(3.0)
                .offset(x: 30, y: 30)
                

            Path({ path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 0, y: (Constants.sH / 3) - 30))
                path.addLine(to: CGPoint(x: (Constants.sW * 7 / 20), y: (Constants.sH / 3)))
                // add curve
                path.addLine(to: CGPoint(x: (Constants.sW * 13 / 20), y: Constants.sH / 3))
                path.addLine(to: CGPoint(x: Constants.sW, y: (Constants.sH / 3) - 30))
                path.addLine(to: CGPoint(x: Constants.sW, y: 0))
                path.addLine(to: CGPoint(x: 0, y: 0))
            })
            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0 / 255, green: 55 / 255, blue: 56 / 255), Color(red: 45 / 255, green: 121 / 255, blue: 109 / 255)]), startPoint: .leading, endPoint: .trailing))
            .zIndex(1.0)
            .frame(width: Constants.sW, height: Constants.sH / 3, alignment: .center)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            
            
            Image("Deals")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: Constants.sW * 0.60, alignment: .center)
                .offset(x: (Constants.sW / 6), y: (Constants.sH / 12))
                .foregroundColor(.white)
                .rotationEffect(.degrees(-8))
                .font(.title)
                .zIndex(2.0)
            
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 10, height: 10, alignment: .center)
                .zIndex(4.0)
                .foregroundColor(.white)
                .offset(x: 260, y: 100)
            
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 15, height: 15, alignment: .center)
                .zIndex(4.0)
                .foregroundColor(.white)
                .offset(x: 150, y: 150)

            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 18, height: 18, alignment: .center)
                .zIndex(4.0)
                .foregroundColor(.white)
                .offset(x: 200, y: 15)

            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 8, height: 8, alignment: .center)
                .zIndex(4.0)
                .foregroundColor(.white)
                .offset(x: 90, y: 80)

            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 10, height: 10, alignment: .center)
                .zIndex(4.0)
                .foregroundColor(.white)
                .offset(x: 60, y: 100)

            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 10, height: 10, alignment: .center)
                .zIndex(4.0)
                .foregroundColor(.white)
                .offset(x: 190, y: 150)

            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 10, height: 10, alignment: .center)
                .zIndex(4.0)
                .foregroundColor(.white)
                .offset(x: 80, y: 150)

                

        }
        
    }
}

struct Deals_Previews: PreviewProvider {
    static var previews: some View {
        Deals()
    }
}
