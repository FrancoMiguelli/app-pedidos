//
//  API.swift
//  otonelsu
//
//  Created by Midas Tecnologia on 03/11/19.
//  Copyright © 2019 Midas Tecnologia. All rights reserved.
//

import Foundation
import Firebase

struct API {
    
     let db = Firestore.firestore()
    
    func saveData(collection: String, document: String, datas: [String:Any]) {
        
        db.collection(collection).document(document).setData(datas)
        
    }
}
