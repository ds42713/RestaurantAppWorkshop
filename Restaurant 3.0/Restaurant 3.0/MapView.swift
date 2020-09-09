//
//  MapView.swift
//  Restaurant 3.0
//
//  Created by Pongsakorn Praditkanok on 2/7/2563 BE.
//  Copyright © 2563 Ds42713. All rights reserved.
//

import SwiftUI
import MapKit
struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 13.762483, longitude: 100.642772) //กำหนด พิกัด
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01) //กำหนดมุมกล้อง 0.01 คือระยะซูมของMap
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
