//
//  MapScreen.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI
import MapKit

struct MapScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.334_900, longitude: -122.009_020), latitudinalMeters: 750, longitudinalMeters: 750)
    
    private var sH = UIScreen.main.bounds.height
    
    var body: some View {
        
        VStack(content: {
            
            ZStack(content: {
                Map(coordinateRegion: $region)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack(content: {
                    
                    HStack(content: {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                            
                        }, label: {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.black)
                                .font(.title)
                        })
                        .padding(.leading)
                        .padding(.top)
                        .navigationTitle("")
                        .navigationBarBackButtonHidden(true)
                        .navigationBarHidden(true)
                        
                        Spacer()

                    })
                    
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .opacity(0.6)
                        .frame(width: 250, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.gray)
                        .padding(.bottom)
                })
            })
            .frame(height: sH  / 2)
            
            Spacer()
            
            HStack(content: {
                
                Text("Nearby Shops")
                    .foregroundColor(.green)
                    .font(.title)
                    .padding(.leading)
                
                Spacer()
            })
            
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                
                LazyVStack(content: {
                    ForEach(1...10, id: \.self) { count in
                        HStack(content: {
                            Circle()
                                .frame(width: 50, height: 50, alignment: .center)
                                .foregroundColor(.blue)
                                .padding(.leading)
                                .padding(.top)
                                .shadow(color: .gray, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            VStack(content: {
                                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                                Text("Another point")
                            })
                            .padding(.leading)
                            
                            Spacer()
                        })
                    }
                })
                
            })

        })
    }
}

struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen()
    }
}
