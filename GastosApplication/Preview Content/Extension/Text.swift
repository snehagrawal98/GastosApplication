//
//  Text.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 11/01/22.
//

import SwiftUI

// taking example as screen X - 29
/*
 taking example from X - 29 & 34 screens for iphone 11 pro

 size 26 : title
 size 24 : title2
 size 20 : title3
 size 18 : headline
 size 16 : body
 size 14 : subheadline
 size 12 : caption
 size 10 : caption2

 weight ->
 400 : regular to medium
 450 : medium
 500 : semibold to bold
 */

extension Text {

  // Local Market
  func title2TextStyle() -> some View {
    self
      .fontWeight(.medium)
      .font(.title2)
      .foregroundColor(Color("5"))
  }

  // Nearby
  func title3TextStyle() -> some View {
    self
      .fontWeight(.bold)
      .font(.headline)
      .foregroundColor(Color("5"))
  }

  // Shop Name
  func title4TextStyle() -> some View {
    self
      .fontWeight(.bold)
      .font(.caption)
      .foregroundColor(Color("5"))
  }

  // Meat Pizza
  func normalTextStyle() -> some View {
    self
      .fontWeight(.bold)
      .font(.body)
  }

  // Beyti Restaurant
  func subTextStyle() -> some View {
    self
      .fontWeight(.medium)
      .font(.caption)
      .foregroundColor(.secondary)
  }

  // ratings
  func subTextNumberStyle() -> some View {
    self
      .fontWeight(.medium)
      .font(.caption)
  }

  func recieptLightStyle() -> some View {
    self
      .font(.caption)
      .fontWeight(.bold)
      .foregroundColor(.gray)
  }

  func recieptDarkStyle() -> some View {
    self
      .font(.subheadline)
      .fontWeight(.bold)
      .foregroundColor(.black)
  }
}
