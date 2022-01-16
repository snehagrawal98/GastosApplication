//
//  Bill.swift
//  Gastos_user_mvp1
//
//  Created by mnameit on 20/10/21.
//

import SwiftUI

struct Bill: View {
    @State private var amount = ""
    var body: some View {
       
            VStack(alignment: .leading){
                Image(systemName: "arrow.backward").foregroundColor(Color("5")).padding(.vertical)
                Text("Billed Amount").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 30))
                TextField("xxx", text: $amount).keyboardType(.numberPad).underlineTextField().foregroundColor(Color("5"))
                Spacer()
            }.padding().background(Color("8").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
        }
    }


struct Bill_Previews: PreviewProvider {
    static var previews: some View {
        Bill()
    }
}
