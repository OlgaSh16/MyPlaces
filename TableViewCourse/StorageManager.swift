//
//  StorageManager.swift
//  TableViewCourse
//
//  Created by Оля on 16/06/2019.
//  Copyright © 2019 Оля. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
}



