//
//  ContentView.swift
//  Restaurant 3.0
//
//  Created by Pongsakorn Praditkanok on 1/7/2563 BE.
//  Copyright © 2563 Ds42713. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    let restaurantList = RestaurantModel.all()
    
    var body: some View {
        NavigationView {
            List (restaurantList) { restaurant2 in // เพิ่มในrestaurantModel
                
                NavigationLink(destination: RestaurantDetail(restaurant: restaurant2))
                {
                    RestaurantCell(restaurant1: restaurant2)  //
                }
            }.navigationBarTitle("Restaurant")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView() //.environment(\.colorScheme, .dark) // .environment(\.colorScheme, .dark) = คำสั่งDark mode
    }
}
