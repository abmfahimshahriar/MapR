//
//  User.swift
//  MapR
//
//  Created by Fahim Shahriar on 31/10/21.
//

import Foundation

struct User: Codable, Identifiable {
    let id: Int
    let name: String
    let about: String
    let latitude: Double
    let longitude: Double
    let imageUrl: String
    let interests: [String]
    let skills: [String]
}

let mock_user: User = .init(id: 1, name: "Fahim Reed", about: "Something about me", latitude: 57.12, longitude: -4.71, imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334",
                            interests: ["cycling", "swimming", "trekking"],
                            skills: ["react", "angular", "expressjs", "swift"])
