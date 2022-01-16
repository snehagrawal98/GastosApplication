//
//  TabDetailsView.swift
//  Gastos_user_mvp1
//
//  Created by Vaishant Makan on 24/09/21.
//

import SwiftUI

struct TabDetailsView: View {
    
    let index: Int
    @Binding var selection: Int
    @Binding var showOnboardingScreen: Bool
    
    var body: some View {
        
        
        ZStack {
            
            Color(tabs[index].bgColor)
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    Spacer()
                    //skip Button
                    Button(action: {skipButtonAction()}, label: {
                        Text("Skip")
                            .fontWeight(.semibold)
                            .kerning(1.5)
                    })
                        .foregroundColor(Color.white)
                        .padding()
                }
                .padding(.top,UIScreen.main.bounds.height/20)
                
                if selection > 0 {
                    HStack {
                        //previous Button
                        Button(action: {backButtonAction()}, label: {
                            Image(tabs[index].topButton)
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width/6, height: UIScreen.main.bounds.height/15, alignment: .leading)
                        })
                        
                        Spacer()
                    }
                }
                else {
                    HStack{
                        Text("")
                            .frame(width: UIScreen.main.bounds.width/6, height: UIScreen.main.bounds.height/15, alignment: .center)
                        Spacer()
                    }
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Image(tabs[index].image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width/1.19, height: UIScreen.main.bounds.height/2.7, alignment: .center)
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(tabs[index].title)
                            .font(.system(size: UIScreen.main.bounds.height/25))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .lineLimit(nil)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/10, alignment: .topLeading)
                        
                        
                        Text(tabs[index].text)
                        //.font(.headline)
                            .font(.system(size: UIScreen.main.bounds.height/45))
                            .fontWeight(.semibold)
                            .lineLimit(nil)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/7, alignment: .topLeading)
                        
                    }
                    .padding()
                    
                    //animated indicators
                    HStack(spacing: 8) {
                        
                        ForEach(tabs.indices, id: \.self) { index in
                            
                            Capsule()
                                .fill(Color.white)
                                .opacity(index == selection ? 1 : 0.4)
                                .frame(width: 9, height: 9)
                                .animation(.easeInOut, value: selection)
                        }
                    }
                    .padding(.leading, 18)
                    
                }
                
                HStack {
                    Spacer()
                    //next Button
                    Button(action: {nextButtonAction()}, label: {
                        Image(tabs[index].bottomButton)
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width/6, height: UIScreen.main.bounds.height/11, alignment: .center)
                    })
                }
                .padding(.bottom, UIScreen.main.bounds.height/15)
            }
        }
        
    }
    
    func backButtonAction() {
        withAnimation {
            if selection > 0 {
                selection -= 1
            }
        }
    }
    
    func nextButtonAction() {
        
        withAnimation {
            
            if selection < tabs.count - 1 {
                selection += 1
            } else if selection == tabs.count - 1 {
                skipButtonAction()
            }
            
        }
    }
    
    func skipButtonAction() {
        
        withAnimation {
            showOnboardingScreen.toggle()
        }
        
    }
}

struct TabDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TabDetailsView(index: 0, selection: Binding.constant(0), showOnboardingScreen: Binding.constant(true))
    }
}
