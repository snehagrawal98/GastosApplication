//
//  CategoryView.swift
//  GastosApplication
//
//  Created by Sai Kumar Kasireddi's MacBook on 03/02/22.
//

import SwiftUI

struct CategoryView: View {
  @Environment(\.dismiss) var dismiss

  @State var searchText = ""
  @State var isSearching = false
  @State var title: String
    var body: some View {
      NavigationView {
        ScrollView(.vertical) {
            // Navigation Bar
            HStack {
              Button(action: {
                dismiss()
              }, label: {
                Image(systemName: "arrow.left")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 25, height: 12.5)
                  .foregroundColor(.primary)
              })

              CategoriesTitleView(title: title)
                .padding(.leading)
              Spacer()
            }
            .padding()

          SearchBar(searchText: $searchText, isSearching: $isSearching)

            Nearby()
            
            Trending()
                .frame(height: Constants.sH)

          Trending()
            .frame(height: 2 * UIScreen.screenHeight)
        }
        .navigationBarHidden(true)
      }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
      CategoryView(title: "Sip And Bite")
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
              TextField("Search", text: $searchText).onTapGesture {
                  self.hideKeyboard()
              }
                  .padding(.leading, 24)
          }
          .padding(.vertical)
          .background(Color(.white))
          .cornerRadius(15)
          .shadow(color: .gray.opacity(0.3), radius: 5)
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
