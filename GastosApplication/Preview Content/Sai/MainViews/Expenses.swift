//
//  Expenses.swift
//  GastosApplication
//
//  Created by Sai Kumar Kasireddi's MacBook on 09/03/22.
//

import SwiftUI

struct Expenses: View {
  let rupeeSymbol = "\u{20B9}"
  @State var searchText = ""
  @State var isSearching = false


    var body: some View {
      NavigationView {
        ScrollView(.vertical) {
          // Nav bar
          HStack {
            Text("Expenses")
              .font(.title2.weight(.medium))
              .foregroundColor(Color("deepGreen"))

            Spacer()
            Button(action: {}, label: {
              Image(systemName: "slider.horizontal.3")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(Color("deepGreen"))
            })
          }
          .padding(.horizontal)
          .padding(.bottom, 12)

          SearchBar(searchText: $searchText, isSearching: $isSearching)
            .padding(.bottom)

          ForEach(1..<10, id: \.self) { _ in
            HStack {
              Image("foodItem")
                .resizable()
                .scaledToFit()
                .frame(width: 0.13 * UIScreen.screenWidth)
                .clipShape(Circle())

              VStack {
                Text("Sweet Shop")
                  .font(.headline.weight(.regular))
                Spacer()
                Text("\(rupeeSymbol) 1000")
                  .font(.body.weight(.semibold))
                  .foregroundColor(.gray)
              }
              Spacer()

              VStack {
                Text("26 Dec 2020")
                  .font(.caption.weight(.semibold))
                  .foregroundColor(.gray)
                Spacer()
                Image("Google Pay")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 0.1 * UIScreen.screenWidth, height: 0.05 * UIScreen.screenHeight)
              }
            }
            .frame(width: 0.8 * UIScreen.screenWidth, height: 0.06 * UIScreen.screenHeight)
            .padding()
            .background(
              RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .shadow(color: .gray.opacity(0.5), radius: 4)
                .frame(width: 0.88 * UIScreen.screenWidth, height: 0.086 * UIScreen.screenHeight)
            )
          }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
      }
    }
}

struct Expenses_Previews: PreviewProvider {
    static var previews: some View {
        Expenses()
    }
}
