//
//  UserViewModel.swift
//  MapR
//
//  Created by Fahim Shahriar on 31/10/21.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var users = [User]()
    @Published var filteredUsers = [User]()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        let url = Bundle.main.url(forResource: "users", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        users = try! JSONDecoder().decode([User].self, from: data)
        filteredUsers = users
    }
    
    func filterUsers(selectedInterest selInt: String, selectedSkill selSkill: String) {
        var tempUsers: [User] = []
        for user in users {
            if user.interests.contains(selInt) {
                tempUsers.append(user)
            } else if user.skills.contains(selSkill) {
                tempUsers.append(user)
            }
        }
        
        filteredUsers = tempUsers
    }
}
