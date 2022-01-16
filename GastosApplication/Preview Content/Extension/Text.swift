//
//  Text.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 11/01/22.
//

import SwiftUI

// taking example as screen X - 29
// medium is taken as size: 400
// bold is taken as size: 500

extension Text {

  // Local Market
  func title2TextStyle() -> some View {
    self
      .fontWeight(.medium)
      .font(.system(size: 24))
      .foregroundColor(Color("5"))
  }

  // Nearby
  func title3TextStyle() -> some View {
    self
      .fontWeight(.bold)
      .font(.system(size: 18))
      .foregroundColor(Color("5"))
  }

  // Shop Name
  func title4TextStyle() -> some View {
    self
      .fontWeight(.bold)
      .font(.system(size: 12))
      .foregroundColor(Color("5"))
  }

  // Meat Pizza
  func normalTextStyle() -> some View {
    self
      .fontWeight(.bold)
      .font(.system(size: 16))
  }

  // Beyti Restaurant
  func subTextStyle() -> some View {
    self
      .fontWeight(.medium)
      .font(.system(size: 12))
      .foregroundColor(.secondary)
  }

  // ratings
  func subTextNumberStyle() -> some View {
    self
      .fontWeight(.medium)
      .font(.system(size: 12))
  }

  func recieptLightStyle() -> some View {
    self
      .font(.system(size: 13))
      .fontWeight(.bold)
      .foregroundColor(.gray)
  }

  func recieptDarkStyle() -> some View {
    self
      .font(.system(size: 14))
      .fontWeight(.bold)
      .foregroundColor(.black)
  }
}
