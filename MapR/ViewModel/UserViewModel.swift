//
//  UserViewModel.swift
//  MapR
//
//  Created by Fahim Shahriar on 31/10/21.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        let url = Bundle.main.url(forResource: "users", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        users = try! JSONDecoder().decode([User].self, from: data)
    }
}
