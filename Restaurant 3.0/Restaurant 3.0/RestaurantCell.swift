//
//  RestaurantCell.swift
//  Restaurant 3.0
//
//  Created by Pongsakorn Praditkanok on 1/7/2563 BE.
//  Copyright © 2563 Ds42713. All rights reserved.
//

import SwiftUI

struct RestaurantCell : View // คำสั่ง struct ใช้เหมือนแม่พิมพ์ ไม่ต้องใช้คำสั่งเต็ม
{
    let restaurant1: RestaurantModel // ตัวรับข้อมูลทั้งหมดจาก RestaurantModel มาใส่ใน let restaurant
    var body: some View {
        HStack
            {   Image(restaurant1.imageName) //นำข้อมูลจาก let restaurantมาใช้โดยใส่ .imagename
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Rectangle()) // .clipShape(Circle()) = รูปเป็นวงกลม สี่เหลื่ยม
                .cornerRadius(20) // ขอบรูปเป็นวงกลม
                VStack(alignment: .leading) // VStack = เรียงแนวตั้ง  // .leading = คำสั่งชิดช้าย
                {
                    Text(restaurant1.name) //นำข้อมูลจาก let restaurantมาใช้โดยใส่ .name
                        .font(.headline)
                    Text(restaurant1.location)  //นำข้อมูลจาก let restaurantมาใช้โดยใส่ .location
                        .font(.subheadline)
                        .foregroundColor(.gray) // สีตัวอักษร
                    Text(restaurant1.money) //นำข้อมูลจาก let restaurantมาใช้โดยใส่ .money
                        .foregroundColor(.yellow)
                }
        }
    }


struct RestaurantCell_Previews: PreviewProvider // ตัวแสดงผล ถ้าคิดว่าไม่ต้องแสดงผลก็สามารถลบได้เลย
    {
    static var previews: some View
        {
        Group { // คำสั่งเพิ่มอีกหน้านึง สามารถกด command + คลิกซ้ายเพื่อเพิ่มได้
            RestaurantCell(restaurant1: RestaurantModel.all()[0])
                .previewLayout(.sizeThatFits) // .previewLayout(.sizeThatFits) แสดงผลออกมาเฉพาะที่ใช้
                .padding()
                .environment(\.sizeCategory, .medium) // ขนาดตัวหนังสือ
        }
        }
    }
}
