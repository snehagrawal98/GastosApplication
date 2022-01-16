//
//  AuthenticationView.swift
//  Gastos_user_mvp1
//
//  Created by Rachit on 24/09/21.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        NavigationView{
            
            VStack{
                HStack(spacing: 50){
                    
                    VStack {
                        Text("Welcome To")
                            .font(.title2)
                        Text("Gastos")
                            .font(.largeTitle)
                    }.foregroundColor(Color("5"))
                        .frame(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.height/4, alignment: .leading)
                        
                    Image("Layer")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height/3, alignment: .center)
                        .aspectRatio( contentMode: .fit)
                }
                Spacer()
            }.navigationBarHidden(true)
            }
        }
    }


struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
