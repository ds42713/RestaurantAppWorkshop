//
//  RestaurantModel.swift
//  Restaurant 3.0
//
//  Created by Pongsakorn Praditkanok on 3/7/2563 BE.
//  Copyright © 2563 Ds42713. All rights reserved.
//

import Foundation
struct RestaurantModel : Identifiable{
  var id = UUID()
    var name: String // String เก็บตัวแปลข้อความ
    var imageName: String
    var location: String
    var money: String
    var latitude: Double //
    var longitude: Double // Double เก็บตัวแปรตัวเลข ทศนิยม
}
extension RestaurantModel {
static func all() -> [RestaurantModel] {
    return [
        RestaurantModel(name: "Jhon Bake", imageName: "restaurant-1", location: "Bangkapi" , money: "$$$$", latitude: 13.762403, longitude: 100.642772) ,
        RestaurantModel(name: "Jimmy Cafe", imageName: "restaurant-2", location: "Asok" , money: "$$$", latitude: 13.733436, longitude: 100.5588223) ,
        RestaurantModel(name: "Janny Coffee", imageName: "restaurant-3", location: "Nana" , money: "$", latitude: 13.737589, longitude: 100.5535679) ,
        RestaurantModel(name: "Jiw Restaurant", imageName: "restaurant-4", location: "Ari" , money: "$$", latitude: 13.777206, longitude: 100.5423903) ,
        RestaurantModel(name: "Jai bar", imageName: "restaurant-5", location: "Phaya thai" , money: "$$", latitude: 13.777206, longitude: 100.5423903) ,
    ]
    }

}
