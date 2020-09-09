//
//  RestaurantDetail.swift
//  Restaurant 3.0
//
//  Created by Pongsakorn Praditkanok on 2/7/2563 BE.
//  Copyright © 2563 Ds42713. All rights reserved.
//

import SwiftUI

struct RestaurantDetail: View {
    
    var restaurant: RestaurantModel // สร้างตัวแปลมาส่งข้อมูล restaurant
    
    var body: some View {
        VStack {
            
            MapView()
                .edgesIgnoringSafeArea(.top) // คำสั่งไม่สนใจขอบ
                .frame(height: 250)
            CircleImage(name: restaurant.imageName ) // ค่าของภาพrestaurant-1 ส่งมาให้ตัวแปร nameimageและส่งต่อให้ nameimage2
                .offset( x: 0 ,y: -130) // เลื่อนรูปขึ้น มีทั้งแกน X Y
                .padding(.bottom ,-130) // ลดกรอบรูปในที่นี้เพื่อให้ข้อความเลื่อนเข้ามา
            DetailContent(restaurant: restaurant)
            Spacer()
            
        }
    }
}

struct RestaurantDetail_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetail(restaurant: RestaurantModel.all()[0] )
    }
}

struct CircleImage: View {
    var name :String
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200, alignment: .center)
            .clipShape(Circle())
            .overlay( Circle().stroke(Color.white, lineWidth: 4 )) // เพิ่มขอบรอบวง
            .shadow(radius: 20) //เพิ่มเงา
    }
}

struct DetailContent: View {
    var restaurant: RestaurantModel
    var body: some View {
        VStack(alignment: .leading)  {
            Text(restaurant.name)
                .font(.title)
            HStack  {
                Text(restaurant.location)
                    .font(.title)
                Spacer() // คำสั่งดัน 2 ข้างออกจากกัน เว้นที่ไว้ตรงกลาง ในที่นี้คือ Text(" Location ") กับ  Text(" $$$ ")
                Text(restaurant.money)
                    .font(.title)
                    .foregroundColor(.yellow)
            }
        }.padding() // เว้นระยะทางขอบ
    }
}

