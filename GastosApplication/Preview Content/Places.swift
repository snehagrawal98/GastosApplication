//
//  Places.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct Places: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var searchTxt: String = ""
    
    @State private var showCancelButton: Bool = false
    
    var body: some View {
        
        NavigationView(content: {
        
        VStack(content: {
            HStack(content: {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "arrow.left")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.leading)
                })
                .navigationTitle("")
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)

                Text("Food")
                    .padding(.leading)
                    .font(.title)
                Spacer()
                
                NavigationLink(destination: MapScreen()) {                     VStack(alignment: .leading, spacing: nil, content: {
                    Image(systemName: "star.fill")
                        .padding(.trailing)
                        .font(.headline)
                    Text("map")
                        .font(.caption)
                    })
                .navigationBarHidden(true)
                .navigationTitle("")
                
                }
            })
            
            // Search View
            HStack(content: {
                
            HStack(content: {
                Image(systemName: "magnifyingglass")
                
                TextField("Search", text: $searchTxt) { (isEditting) in
                    self.showCancelButton = true
                } onCommit: {
                    
                }
                .foregroundColor(.primary)
                
                Button(action: {
                    self.searchTxt = ""
                }, label: {
                    Image(systemName: "star")
                        .opacity(searchTxt == "" ? 0 : 1)
                })
                
            })
            .padding()
            .foregroundColor(.secondary)
            .background(Color(.systemGray6))
            .cornerRadius(10)
                
                if showCancelButton {
                    Button(action: {
//                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        UIApplication.shared.windows.forEach({$0.endEditing(true)})
                        self.searchTxt = ""
                        self.showCancelButton = false
                    }, label: {
                        Text("Cancel")
                    })
                    .foregroundColor(Color(.systemBlue))
                }

            })
            .padding()
            
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
                LazyVStack(content: {
                    ForEach(1...10, id: \.self) { count in
                        ZStack(alignment: .bottom,content: {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(.systemTeal))
                                .overlay(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.88)]), startPoint: .top, endPoint: .bottom))
                                .cornerRadius(25)
                                .frame(height: Constants.sH * 0.175, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding(.horizontal)

                            HStack(content: {
                                VStack(alignment: .leading ,content: {
                                    Text("Place's Name")
                                    HStack(content: {
                                        ForEach(0..<5) { i in
                                            Image(systemName: "star")
                                                .font(.caption)
                                        }
                                    })
                                })
                                .padding(.leading, 40)
                                .offset(y: -10)
                                Spacer()
                                Text("1.3 Km")
                                    .padding(.trailing, 40)
                            })
                                
                        })
                    }
                })
            })

          })
        })
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct Places_Previews: PreviewProvider {
    static var previews: some View {
        Places()
    }
}
