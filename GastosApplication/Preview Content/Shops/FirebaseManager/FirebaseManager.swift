//
//  FirebaseManager.swift
//  GastosApplication
//
//  Created by ehsan sat on 2/1/22.
//

import Foundation
import FirebaseDatabase
import SwiftUI

class FirebaseMnager {
    
    var ref: DatabaseReference?
    
    private var db = Database.database()
    
    func getAllShops(completion: @escaping ([ShopsName])->Void)  {
        let ref = db.reference().child("Merchant_data")
        
        var shopInfo = [ShopsName]()
        ref.observe(DataEventType.value) { snapshot in
            if snapshot.childrenCount > 0 {
                
                for merchant in snapshot.children.allObjects as! [DataSnapshot] // merchants list
                {
                    
                    let shopName = merchant.childSnapshot(forPath: "Shop_Information/shopName").value as? String
                    let shopImageUri = merchant.childSnapshot(forPath: "Shop_Information/shopImageUri").value as? String
                    
                    let shopsName = ShopsName(name: shopName, imageUrl: shopImageUri)
                    shopInfo.append(shopsName)
                    
//                    shopInfo.append(shopName)
//                    shopInfo.append(shopImageUri)
                    
                }
                completion(shopInfo)
            }

        }

    }
}

struct ShopsName: Hashable {
    var name: String?
    var imageUrl: String?
//    var id: String { name! }
}

