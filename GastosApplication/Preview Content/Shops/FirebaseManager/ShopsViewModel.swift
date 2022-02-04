//
//  ShopsViewModel.swift
//  GastosApplication
//
//  Created by ehsan sat on 2/2/22.
//

import Foundation


class ShopsViewModel: ObservableObject {
    @Published var shopInfo: [ShopsName] = [ShopsName]()
    
    func getAllMerchants() {
        let firebaseManager = FirebaseMnager()
        firebaseManager.getAllShops { res in

            self.shopInfo = res
            print(self.shopInfo)

        }

    }

}
