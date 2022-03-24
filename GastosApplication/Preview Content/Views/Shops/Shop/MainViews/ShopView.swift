//
//  ShopView.swift
//  Gastos_user_mvp1
//
//  Created by Sai Kumar Kasireddi's MacBook on 14/01/22.
//

import SwiftUI
import UIKit

struct ShopView: View {
    var shopName: String
    var shopImagesUrl: String
    var shopImagesUri1: String
    var shopImagesUri2: String
    var shopImagesUri3: String
    var shopImagesUri4: String
    var shopAddress: String
    var shopOwnerName: String
    var shopCategory: String
    var shopDelivery: Bool
    var shopPickUp: Bool
    
    @Environment(\.presentationMode) var presentationMode
    

    @State var isShowingPayments = false

    var body: some View {
        
        
      VStack {
        ZStack {
          Rectangle()
            .foregroundColor(.white)
            .frame(height: 0.405 * UIScreen.screenHeight)
            .cornerRadius(22, corners: [.bottomRight, .bottomLeft])
            .shadow(color: Color.gray, radius: 5)
            .edgesIgnoringSafeArea(.all)

          // NAavigation Bar & Shop Image
          VStack {
            Spacer()

            // Navigation Bar
            HStack {
              Image(systemName: "arrow.left")
                .resizable()
                .frame(width: 22, height: 15, alignment: .leading)
                .foregroundColor(Color("textGreen"))
                .padding(.horizontal, 20)
                .onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()
                }

              Spacer()

              Text(shopName)
                .font(.title.weight(.bold))
                .foregroundColor(Color("deepGreen"))

              Spacer()
              Spacer()
              Spacer()
              Spacer()
            } //: HSTACK

            Spacer()

            ShopImages(shopImagesUrl: shopImagesUrl,
                       shopImagesUri1: shopImagesUri1,
                       shopImagesUri2: shopImagesUri2,
                       shopImagesUri3: shopImagesUri3,
                       shopImagesUri4: shopImagesUri4)
            //ShopImages()

            Spacer()
            Spacer()
          }
          .frame(height: 0.405 * UIScreen.screenHeight)
        } //: ZSTACK

        ShopDetails(shopCategory: shopCategory, delivery: shopDelivery, pickUp: shopPickUp)
          .padding(.top, -20)

        Spacer()

        // Discount Image
        Image("discount")
          .resizable()
          .scaledToFill()
          .frame(width: 0.896 * UIScreen.screenWidth, height: 0.157 * UIScreen.screenHeight, alignment: .center)

        Spacer()

        ContactUs(contactName: shopOwnerName, address: shopAddress)
          .padding(.top)

        Spacer()

        // Pay button
        Button(action: {
          isShowingPayments.toggle()
        }, label: {
          BottomButton(buttonText: "Pay", buttonColor: "textGreen", textColor: "white")
            .font(.headline)
        })
          .fullScreenCover(isPresented: $isShowingPayments, content: {
            Payment(shopName: "Sai-Mart", shopAddress: "43-BD, Delhi", discount: 10.0)
          })

          
        
        Spacer()
      } //: VSTACK
      .navigationBarBackButtonHidden(true)
      .navigationBarHidden(true)
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView(shopName: "Cafe Bistro", shopImagesUrl: "https://picsum.photos/300/200", shopImagesUri1: "https://picsum.photos/300/200", shopImagesUri2: "https://picsum.photos/300/200", shopImagesUri3: "https://picsum.photos/300/200", shopImagesUri4: "https://picsum.photos/300/200", shopAddress: "somewhere",  shopOwnerName: " A B ", shopCategory: "Food & Beverages", shopDelivery: true, shopPickUp: false)

    }
}

// Shop Images
struct ShopImages: View {
    
    var shopImagesUrl: String
    var shopImagesUri1: String
    var shopImagesUri2: String
    var shopImagesUri3: String
    var shopImagesUri4: String
    
    var body: some View {
      TabView {
        
          Image(shopImagesUrl)
            .resizable()
            .scaledToFill()
            .frame(width: 0.864 * UIScreen.screenWidth, height: 0.226 * UIScreen.screenHeight)
            .cornerRadius(10)
          
          Image(shopImagesUri1)
            .resizable()
            .scaledToFill()
            .frame(width: 0.864 * UIScreen.screenWidth, height: 0.226 * UIScreen.screenHeight)
            .cornerRadius(10)
          
          Image(shopImagesUri2)
            .resizable()
            .scaledToFill()
            .frame(width: 0.864 * UIScreen.screenWidth, height: 0.226 * UIScreen.screenHeight)
            .cornerRadius(10)
          
          Image(shopImagesUri3)
            .resizable()
            .scaledToFill()
            .frame(width: 0.864 * UIScreen.screenWidth, height: 0.226 * UIScreen.screenHeight)
            .cornerRadius(10)
          
          Image(shopImagesUri4)
            .resizable()
            .scaledToFill()
            .frame(width: 0.864 * UIScreen.screenWidth, height: 0.226 * UIScreen.screenHeight)
            .cornerRadius(10)

        
      }//: TAB
      .frame(width: 0.864 * UIScreen.screenWidth, height: 0.226 * UIScreen.screenHeight)
      .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// Shop Details
struct ShopDetails: View {
    var shopCategory: String
    var delivery: Bool
    var pickUp: Bool
    var body: some View {
      HStack {
        Text(shopCategory)
          .font(.subheadline.weight(.bold))
          .frame(width: 0.44 * UIScreen.screenWidth, height: 0.046 * UIScreen.screenHeight )
          .background(Color("textGreen"))
          .foregroundColor(.white)
          .cornerRadius(14)
          .padding(.trailing, 4)

        HStack {
            Image(systemName: delivery ? "checkmark.circle.fill" : "checkmark.circle")
            .foregroundColor(Color("textGreen"))

          Text("Delivery")
        }
        .foregroundColor(Color("textGreen"))
        .padding(.horizontal, 4)
        .font(.caption.weight(.bold))


        HStack {
            Image(systemName: pickUp ? "checkmark.circle.fill" : "checkmark.circle")
            .foregroundColor(Color("textGreen"))

          Text("Pickup")
        }
        .foregroundColor(Color("textGreen"))
        .padding(.horizontal, 4)
        .font(.caption.weight(.bold))
      }
    }
}

// Contact Us
struct ContactUs: View {
  @State var contactName: String
  @State var address: String
  var strNumber = "911234567890"

    var body: some View {
      VStack {
        HStack {
          VStack(alignment: .leading) {
            Text(contactName)
              .font(.title3.weight(.bold))
              .foregroundColor(Color("textGreen"))

            Text("here at your service")
              .font(.subheadline.weight(.medium))
              .foregroundColor(.gray)
          }
          Spacer()
          Button(action: {
            // call shop
            let tel = "tel://"
            let formattedString = tel + strNumber
            guard let url = URL(string: formattedString) else { return }
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
          }, label: {
            VStack {
              Image(systemName: "phone.fill.arrow.up.right")
                .scaleEffect(1.5)
                .padding(8)

              Text("Connect")
                .font(.caption2.weight(.medium))
            }
            .frame(width: 80, height: 38, alignment: .center)
            .foregroundColor(Color("textGreen"))
          })
        }
        .padding(.horizontal, 24)

        HStack {
          VStack(alignment: .leading) {
            Text("Visit us at :")
              .font(.subheadline.weight(.bold))
              .foregroundColor(Color("textGreen"))
              .padding(.vertical, 2)

            Text(address)
              .font(.subheadline.weight(.regular))
              .frame(height: 40)
          }
          Spacer()
          Button(action: {
            // Jump to shop
          }, label: {
            VStack {
              Image(systemName: "paperplane.fill")
                .scaleEffect(1.5)
                .padding(8)

              Text("Jump to shop")
                .font(.caption2.weight(.medium))
            }
            .frame(width: 80, height: 38, alignment: .center)
            .foregroundColor(Color("textGreen"))
          })
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 24)
      }
    }
}
