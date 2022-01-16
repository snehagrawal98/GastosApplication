//
//  MainTab.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct MainTab: View {
    
    init() {
        
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().isHidden = true
        UITabBar.appearance().backgroundColor = .white
        UITabBar.appearance().barTintColor = .white
        UITabBar.appearance().isTranslucent = false
    }
    
    @State private var selectedTab = 1
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack {
            TabView(selection: $selectedTab) {
                DealsTab()
                    .tag(1)
                FavoriteTab()
                    .tag(2)
                HomeTab()
                    .tag(3)
                MapsTab()
                    .tag(4)
                ExpensesTab()
                    .tag(5)
            }
//            .frame(height: UIScreen.main.bounds.height - 70)
            .edgesIgnoringSafeArea(.all)
            
            Spacer()
            HStack(content:{
                
                Group {
                    Spacer()
                    Button(action: {
                        self.selectedTab = 1
                    }, label: {
                        Image("Tab1")
                    })
                    .foregroundColor((self.selectedTab == 1) ? .green : .gray)
                    .animation(.easeInOut(duration: 1))

                    Spacer()
                    Button(action: {
                        self.selectedTab = 2
                    }, label: {
                        Image("Tab2")
                    })
                    .foregroundColor((self.selectedTab == 2) ? .green : .gray)
                    .animation(.easeInOut(duration: 1))

                    Spacer()

                }
                
                Button(action: {
                    if self.selectedTab == 3 {
                        self.isPresented = true
                    } else {
                        self.selectedTab = 3
                    }
                }, label: {
                    if self.selectedTab == 3 {
                        Image("HomeTab")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                            .offset(y: -20)
                    } else {
                        Image("Tab3")
                    }
                })
                .fullScreenCover(isPresented: $isPresented, content: {
                    NewPayment()
                })
                .foregroundColor((self.selectedTab == 3) ? .green : .gray)
                .animation(.easeInOut(duration: 1))
                

                Group {
                    Spacer()
                    
                    Button(action: {
                        self.selectedTab = 4
                    }, label: {
                        Image("Tab4")
                    })
                    .foregroundColor((self.selectedTab == 4) ? .green : .gray)
                    .animation(.easeInOut(duration: 1))
                    
                    Spacer()
                    
                    Button(action: {
                        self.selectedTab = 5
                    }, label: {
                        Image("Tab5")
                    })
                    .foregroundColor((self.selectedTab == 5) ? .green : .gray)
                    .animation(.easeInOut(duration: 1))

                   Spacer()

                }
            })
            .padding(.horizontal)
            .frame(height: Constants.sH * 0.079)
            .background(Color.white
                            .shadow(color: .gray, radius: 3, x: 0.0, y: 0.0)
            )
            .edgesIgnoringSafeArea(.all)

        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct MainTab_Previews: PreviewProvider {
    static var previews: some View {
        MainTab()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
            .previewDisplayName("iPhone 12 Pro Max")
    }
}
