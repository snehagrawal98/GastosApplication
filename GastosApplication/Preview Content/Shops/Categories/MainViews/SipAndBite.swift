//
//  SipAndBite.swift
//  GastosApplication
//
//  Created by Sai Kumar Kasireddi's MacBook on 29/01/22.
//

import SwiftUI

struct SipAndBite: View {
  @State var searchText = ""
  @State var isSearching = false

  var body: some View {
    ScrollView(.vertical) {

      // Navigation Bar
      HStack {
        Image(systemName: "arrow.left")
          .resizable()
          .scaledToFit()
          .frame(width: 25, height: 12.5)

        CategoriesTitleView(title: "Sip & Bite")
          .padding(.leading)
        Spacer()
      }
      .padding()

      SearchBar(searchText: $searchText, isSearching: $isSearching)

      // Search Function
      ForEach((1..<1).filter({ "\($0)".contains(searchText) || searchText.isEmpty }), id: \.self) { shop in

          HStack {
              Text("\(shop)")
              Spacer()
          }.padding()

          Divider()
              .background(Color(.systemGray4))
              .padding(.leading)
      }

      Nearby()

      Trending()
    }
  }
}

struct SipAndBite_Previews: PreviewProvider {
  static var previews: some View {
      SipAndBite()
  }
}

// CategoriesTitleView
struct CategoriesTitleView: View {
var title: String
var body: some View {
  Text(title)
    .font(.title2.weight(.bold))
    .foregroundColor(Color("deepGreen"))
}
}


// Search bar
struct SearchBar: View {

  @Binding var searchText: String
  @Binding var isSearching: Bool

  var body: some View {
      HStack {
          HStack {
              TextField("Search", text: $searchText)
                  .padding(.leading, 24)
          }
          .padding(.vertical)
          .background(Color(.white))
          .cornerRadius(6)
          //.padding(.horizontal)
          .shadow(radius: 2)
          .onTapGesture(perform: {
              isSearching = true
          })
          .overlay(
              HStack {
                  Spacer()

                  if isSearching {
                      Button(action: { searchText = "" }, label: {
                          Image(systemName: "xmark.circle.fill")
                              .padding(.vertical)
                      })

                  } else {
                    Image(systemName: "magnifyingglass")
                      .resizable()
                      .frame(width: 22, height: 22)
                      .foregroundColor(Color("textGreen").opacity(0.8))
                  }

              }.padding(.horizontal, 24)
              .foregroundColor(.gray)
          ).transition(.move(edge: .trailing))
          .animation(.spring())

          if isSearching {
              Button(action: {
                  isSearching = false
                  searchText = ""

                  UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)

              }, label: {
                  Text("Cancel")
                      .padding(.trailing)
                      .padding(.leading, 0)
              })
              .transition(.move(edge: .trailing))
              .animation(.spring())
          }

      }
      .frame(width: 0.92 * UIScreen.screenWidth, height: 0.06 * UIScreen.screenHeight, alignment: .center)

  }
}
