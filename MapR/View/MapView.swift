//
//  MapView.swift
//  MapR
//
//  Created by Fahim Shahriar on 31/10/21.
//

import Kingfisher
import MapKit
import SwiftUI

struct MapView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    
    @State var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
            span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
        )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: userViewModel.users) { user in
                    MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: user.latitude, longitude: user.longitude)) {
                        KFImage(URL(string: user.imageUrl))
                            .resizable()
                            .cornerRadius(50)
                            .frame(width: 40, height: 40)
                            .shadow(radius: 3)
                    }
                }
                .navigationTitle("Locations")
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
