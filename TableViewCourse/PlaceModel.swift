//
//  PlaceModel.swift
//  TableViewCourse
//
//  Created by Оля on 16/06/2019.
//  Copyright © 2019 Оля. All rights reserved.
//

import UIKit

struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    
   static let restaurantNames = [
        "Андерсон", "Суши Guru", "Шаурма на Лосе", "Бургер Кинг",
        "Тануки", "Ла Гатта", "Шаурма на Малыгина", "Domino's",
        "Достоевский", "Маки Маки", "Додо пицца", "КФС"
    ]
    
   static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Москва", type: "Кафе", image: nil, restaurantImage: place))
            
        }
        
        return places
        
    }
}
