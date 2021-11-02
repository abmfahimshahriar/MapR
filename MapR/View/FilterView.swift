//
//  FilterView.swift
//  MapR
//
//  Created by Fahim Shahriar on 1/11/21.
//

import SwiftUI

struct FilterView: View {
    
    @EnvironmentObject var userViewModel: UserViewModel
    
    @Binding var showFilterPopOver: Bool
    
    @State private var interestSelection = ""
    @State private var skillsSelection = ""
    
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false) {
                
                HStack {
                    Text("Filter")
                        .font(.title)
                    Spacer()
                }
                .padding()
                
                
                VStack {
                    HStack {
                        Text("Select interest")
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 0))
                    
                    HStack() {
                        Picker("Interest", selection: $interestSelection) {
                            ForEach(mock_user.interests, id: \.self) { interest in
                                Text("\(interest)")
                            }
                        }
                        .labelsHidden()
                        
                        Spacer()
                    }
                    .padding()
                }
                
                VStack {
                    HStack {
                        Text("Select skill")
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 0))
                    
                    HStack() {
                        Picker("Interest", selection: $skillsSelection) {
                            ForEach(mock_user.skills, id: \.self) { skill in
                                Text("\(skill)")
                            }
                        }
                        .labelsHidden()
                        
                        Spacer()
                    }
                    .padding()
                }
                
                HStack {
                    Spacer()
                    
                    Button("Filter") {
                        userViewModel.filterUsers(selectedInterest: interestSelection, selectedSkill: skillsSelection)
                        showFilterPopOver = false
                        interestSelection = ""
                        skillsSelection = ""
                        
                    }
                    .frame(width: 80, height: 20)
                    .padding()
                    .background(Color.purple)
                    .clipShape(Capsule())
                    .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    Button("Reset") {
                        userViewModel.fetchUsers()
                        showFilterPopOver = false
                        interestSelection = ""
                        skillsSelection = ""
                    }
                    .frame(width: 60, height: 20)
                    .padding()
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .foregroundColor(Color.white)
                    
                    Spacer()
                }
                
                Text("\(interestSelection)")
                    .foregroundColor(.blue)
                
                Text("\(skillsSelection)")
                    .foregroundColor(.blue)
            }
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView(showFilterPopOver: .constant(true))
    }
}
