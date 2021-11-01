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
            center: CLLocationCoordinate2D(latitude: 48.147241, longitude: 11.551077),
            span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25)
        )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: userViewModel.users) { user in
                    MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: user.latitude, longitude: user.longitude)) {
                        NavigationLink(destination: UserDetailsView(user: user)) {
                            UserAvatarView(imageUrl: user.imageUrl)
                        }
                    }
                }
                .navigationTitle("Find Netlighters")
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
