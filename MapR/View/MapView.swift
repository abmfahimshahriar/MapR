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
    
    @State private var showFilter = false
    
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.147241, longitude: 11.551077),
        span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25)
    )
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, annotationItems: userViewModel.filteredUsers) { user in
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: user.latitude, longitude: user.longitude)) {
                    NavigationLink(destination: UserDetailsView(user: user)) {
                        UserAvatarView(imageUrl: user.imageUrl)
                    }
                }
            }
            .navigationTitle("Find your peers")
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        // open filter
                        showFilter = true
                    }, label: {
                        Image(systemName: "pencil.circle")
                            .font(.system(size: 50))
                    })
                        .popover(isPresented: $showFilter) {
                            FilterView(showFilterPopOver: $showFilter)                        }
                    
                }
                .foregroundColor(.black)
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
