//
//  KeyboardPad.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/21/21.
//

import SwiftUI

struct KeyboardPad: View {
 
    var body: some View {
        VStack(content: {

            Verification2()
        })
        
        
    }
}

struct KeyboardPad_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardPad()
    }
}


struct Verification2: View{
    
    @State var code: [String] = []
    var body : some View{
        
        ZStack{
//            Image("Layer3").offset(x: 100.0, y: -350.0)
        VStack(spacing: 20){
            
            
//            Text("Verify").fontWeight(.semibold).font(.system(size: 35)).foregroundColor(Color("5"))
            Spacer()
            Text("Enter Verification Code").fontWeight(.semibold).font(.system(size: 25)).foregroundColor(Color("5"))
            Spacer()
            HStack{
                ForEach(code, id:\.self){i in
                    Text(i).font(.title).fontWeight(.medium).foregroundColor(Color("5")).multilineTextAlignment(.center)
                    
                }
            }.padding(.vertical)
            Spacer()
            NumberPad(codes: $code)
        }
        }
    }
}
