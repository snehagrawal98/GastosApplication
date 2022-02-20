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
    
    func getAllShops(completion: @escaping ([Merchant])->Void)  {
        let ref = db.reference().child("Merchant_data")
        
        var merchantArray = [Merchant]()
        ref.observe(DataEventType.value) { snapshot in
            if snapshot.childrenCount > 0 {
                
                for merchant in snapshot.children.allObjects as! [DataSnapshot] // merchants list
                {
                    
                    let merchantName = merchant.childSnapshot(forPath: "Account_Information/ownerName").value as? String
                    let merchantEmail = merchant.childSnapshot(forPath: "Account_Information/emailAddress").value as? String
                    let merchantPhone = merchant.childSnapshot(forPath: "Account_Information/phoneNumber").value as? String
                    
                    let merchantPin = merchant.childSnapshot(forPath: "Account_Information/shopName").value as? String
                    let merchantIntern = merchant.childSnapshot(forPath: "Account_Information/shopName").value as? String
                    
                    let shopCategory = merchant.childSnapshot(forPath: "Shop_Information/category").value as? String
                    let shopCreationTimeStamp = merchant.childSnapshot(forPath: "Shop_Information/creationTimeStamp").value as? Double
                    let shopLocation = merchant.childSnapshot(forPath: "Shop_Information/location").value as? String
                    let shopHomeDelivery = merchant.childSnapshot(forPath: "Shop_Information/homeDelivery").value as? Bool
                    let shopMargin = merchant.childSnapshot(forPath: "Shop_Information/margin").value as? String
                    let shopMrpitem = merchant.childSnapshot(forPath: "Shop_Information/mrpitem").value as? Bool
                    let shopPickUp = merchant.childSnapshot(forPath: "Shop_Information/pickUp").value as? Bool
                    let shopAddress = merchant.childSnapshot(forPath: "Shop_Information/shopAddress").value as? String
                    let shopAddressLatitude = merchant.childSnapshot(forPath: "Shop_Information/shopAddressLatitude").value as? String
                    let shopAddressLongitude = merchant.childSnapshot(forPath: "Shop_Information/shopAddressLongitude").value as? String
                    let shopDiscounts = merchant.childSnapshot(forPath: "Shop_Information/shopAddressLongitude").value as? [Any]

                    
                    let shopName = merchant.childSnapshot(forPath: "Shop_Information/shopName").value as? String
                    let shopImageUri = merchant.childSnapshot(forPath: "Shop_Information/shopImageUri").value as? String
                    
                    
                    let merchantShop = Shop(category: Shop.convert(txt: shopCategory ?? "No Category"),
                                            creationTimeStamp: shopCreationTimeStamp,
                                            homeDelivery: shopHomeDelivery,
                                            location: shopLocation,
                                            margin: shopMargin,
                                            mrpitem: shopMrpitem,
                                            pickUp: shopPickUp,
                                            shopAddress: shopAddress,
                                            shopAddressLatitude: shopAddressLatitude,
                                            shopAddressLongitude: shopAddressLongitude,
                                            shopImageURI: shopImageUri,
                                            shopName: shopName,
                                            discounts: (shopDiscounts ?? []) as? [ShopDiscount]
                                            )
                    
                    let merchantInfo = Merchant(email: merchantEmail,
                                                name: merchantName,
                                                intern: merchantIntern,
                                                phone: merchantPhone,
                                                pin: merchantPin,
                                                shop: merchantShop)
                    

                    merchantArray.append(merchantInfo)
                    
                }
                completion(merchantArray)
            }

        }

    }
}

struct ShopsName: Hashable {
    var name: String?
    var imageUrl: String?
//    var id: String { name! }
}

//
