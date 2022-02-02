//
//  HomeTab.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI
import Firebase

struct HomeTab: View {

  @AppStorage("log_Status") var status = false
    
    private var columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    @State var images = ["Sip & Bite", "Beauty & Care", "Style & Trends", "Health & Medico", "Daily Needs"]
    @State var categories = ["Sip & Bite","Beauty & Care","Style & Trends","Health & Medico","Daily Needs"]
    var body: some View {
        
        
      NavigationView(content: {

        VStack(content: {
          HStack {
            Text("Hey Sahgal!")
              .font(.title2.weight(.medium))
              .foregroundColor(Color("deepGreen"))
            Spacer()

            //                Button(action: {
            //                      // logging out
            //                      try? Auth.auth().signOut()
            //                      withAnimation{ status = false }
            //                    }, label: {
            //                      Text("LogOut")
            //                    })


            NavigationLink(
              destination: UserProfile(),
              label: {
                Image(systemName: "bell.fill")
                  .font(.system(size: 20))
                  .foregroundColor(.black)

              })
              .navigationTitle("")
              .navigationBarHidden(true)
              .navigationBarBackButtonHidden(true)
              .edgesIgnoringSafeArea(.all)
          }
          .padding(.horizontal)


          NavigationLink(
            destination: UserProfile(),
            label: {
              ZStack {
                HStack(content: {
                  VStack(alignment: .leading, spacing: nil, content: {
                    Text("GASTOS")
                      .foregroundColor(.white)
                      .fontWeight(.semibold)
                      .font(.largeTitle)
                      .padding(.leading)
                      .padding(.top)
                    Spacer()
                    Text("Sahgal Yadav")
                      .foregroundColor(.white)
                      .font(.title2)
                      .fontWeight(.medium)
                      .padding(.leading)
                      .padding(.bottom)
                    Text("1234 5678 1234 5678")
                      .foregroundColor(.white)
                      .font(.body)
                      .padding(.leading)
                    Text("Valid Till: 12-6-2021")
                      .foregroundColor(.white)
                      .font(.subheadline)
                      .padding(.leading)
                      .padding(.bottom)
                  })
                  Spacer()
                  VStack {

                    Spacer()
                    Text("LPI")
                      .foregroundColor(.white)
                      .fontWeight(.bold)
                      .italic()
                      .font(.title)
                      .padding(.trailing)
                      .padding(.bottom)
                  }
                })
                  .zIndex(5)

                VStack {
                  HStack {
                    Spacer()
                    Image("GastosMark")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(height: Constants.sH * 0.2)
                  }
                  Spacer()
                }
                .zIndex(5)

                RoundedRectangle(cornerRadius: 25.0)
                  .foregroundColor(Color("5"))
              }
              .frame(width: Constants.sW - 24, height: Constants.sH * 0.3, alignment: .center)

            })
            .navigationTitle("")
            .navigationBarHidden(true)
          //                .navigationBarBackButtonHidden(true)

          HStack(spacing: -10){

            ForEach(images, id: \.self) { image in

              NavigationLink(
                destination: Places(),
                label: {
                  ZStack {
                    CategoryView(image: image)
                  }
                })
            }
          }

          .padding(.top)

          //            ScrollView(.horizontal, showsIndicators: false, content: {
          //                HStack {
          //                    ForEach(0..<10) { i in
          //                        Rectangle()
          //                            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing))
          //                            .frame(width: 230, height: Constants.sH * 0.2, alignment: .center)
          //                            .cornerRadius(10)
          //                            .shadow(color: .black, radius: 5, x: 0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0)
          //                    }
          //                    .padding()
          //                }
          //            })


          Spacer()

        })

      })
    }
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
       //CategoryView(image: "Sip & Bite")
      HomeTab()
    }
}

// Category View
struct CategoryView: View {
  @State var image: String
  var body: some View {
    ZStack {
      Image(image)
        .resizable()
        .scaledToFill()
        .frame(width: 0.22 * UIScreen.screenWidth, height: 0.26 * UIScreen.screenHeight)

      VStack {
        Spacer()
        Text(image)
          .fontWeight(.semibold)
          .foregroundColor(.black.opacity(0.7))
          .frame(width: 0.4 * UIScreen.screenWidth, height: 16, alignment: .leading)
          .rotationEffect(.degrees(-90))
          .frame(width: 16, height: 0.045 * UIScreen.screenHeight, alignment: .bottom)
        Spacer()
      }
    }
    .frame(width: 0.22 * UIScreen.screenWidth, height: 0.26 * UIScreen.screenHeight)
  }
}
