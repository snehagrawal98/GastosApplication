//
//  ShopsViewModel.swift
//  GastosApplication
//
//  Created by ehsan sat on 2/2/22.
//

import Foundation


class ShopsViewModel: ObservableObject {
    @Published var merchantArray: [Merchant] = [Merchant]()
    
    func getAllMerchants() {
        let firebaseManager = FirebaseMnager()
        firebaseManager.getAllShops { res in

            self.merchantArray = res
            print(self.merchantArray)

        }

    }

}
