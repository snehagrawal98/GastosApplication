//
//  BillAmount.swift
//  Gastos_user_mvp1
//
//  Created by mnameit on 20/10/21.
//

import SwiftUI

struct BillAmount: View {
    
    @State private var amount1 = ""
    @State private var amount2 = ""


    var body: some View {
        VStack(alignment: .leading){
            Image(systemName: "arrow.backward").foregroundColor(Color("5")).padding(.vertical)
            Text("Billed Amount").foregroundColor(Color("5")).fontWeight(.medium).font(.system(size: 30))
            TextField("xxx", text: $amount1).keyboardType(.numberPad).underlineTextField().foregroundColor(Color("5")).padding(.bottom)
            Text("Included MRP").foregroundColor(Color("5")).fontWeight(.regular).font(.system(size: 16))
            Text("(if any)").foregroundColor(Color("5")).fontWeight(.light).font(.system(size: 14))
            TextField("xxx", text: $amount2).keyboardType(.numberPad).underlineTextField().foregroundColor(Color("5"))
            
            Spacer()
        }.padding().background(Color("8").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
    }
}

struct BillAmount_Previews: PreviewProvider {
    static var previews: some View {
        BillAmount()
    }
}
