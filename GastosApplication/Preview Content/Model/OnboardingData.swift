//
//  OnboardingData.swift
//  Gastos_user_mvp1
//
//  Created by Vaishant Makan on 24/09/21.
//

import Foundation

let tabs = [
    
    Page(bottomButton: "onboardingBottomButton1", topButton: "onboardingTopButton1", bgColor: "1", image: "onboardingScreen1", title: "PAY LESS\nSAVE MORE", text: "Get a chance to pay less on each \nand every transaction you make at \nour Providers."),
    Page(bottomButton: "onboardingBottomButton2", topButton: "onboardingTopButton1",bgColor: "2", image: "onboardingScreen2", title: "Earn on every\npayment", text: "Earn coins in every transaction you \nmake. More you earn the more you \npay less."),
    Page(bottomButton: "onboardingBottomButton3", topButton: "onboardingTopButton2",bgColor: "3", image: "onboardingScreen3", title: "WIDE RANGE OF\nPAYMENTS", text: "Now you are not confined to limited \ntypes of payment, be it your local \nchaiwala or your nearby restraunts, \nchemist shop to your gym, we got \nyou covered everywhere."),
    Page(bottomButton: "onboardingBottomButton3", topButton: "onboardingTopButton3",bgColor: "4", image: "onboardingScreen4", title: "MANAGED\nEXPENSES", text: "We provide an Expense Manager where \nyou can manage all your payments of \nevery type in single place and control \nthem easily."),
    
]

struct Page {
    let bottomButton: String
    let topButton: String
    let bgColor: String
    let image: String
    let title: String
    let text: String
}
