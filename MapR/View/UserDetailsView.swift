//
//  UserDetails.swift
//  MapR
//
//  Created by Fahim Shahriar on 1/11/21.
//

import Kingfisher
import SwiftUI

struct UserDetailsView: View {
    let user: User
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 30) {
                    
                    HStack {
                        KFImage(URL(string: user.imageUrl))
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }
                    .padding([.horizontal, .vertical], 16)
                    .cornerRadius(50.0)
                    
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.title)
                    }
                    
                    HStack {
                        Spacer()
                        
                        Button("Message") {
                            print("Button pressed!")
                        }
                        .frame(width: 80, height: 20)
                        .padding()
                        .background(Color.purple)
                        .clipShape(Capsule())
                        .foregroundColor(Color.white)
                        
                        Spacer()
                        
                        Button("Call") {
                            print("Button pressed!")
                        }
                        .frame(width: 60, height: 20)
                        .padding()
                        .background(Color.purple)
                        .clipShape(Capsule())
                        .foregroundColor(Color.white)
                        
                        Spacer()
                        
                        Button(action: {
                            // add to favourites
                        }, label: {
                            Image(systemName: "heart")
                                .font(.system(size: 40))
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            // add to favourites
                        }, label: {
                            Image(systemName: "paperplane")
                                .font(.system(size: 40))
                        })
                        
                        Spacer()
                    }
                    
                    VStack {
                        HStack {
                            Image(systemName: "info.circle")
                            Text("About")
                                .font(.title2)
                                .bold()
                            
                            Spacer()
                        }
                        .padding([.horizontal], 16)
                        
                        HStack {
                            Text(user.about)
                            
                            Spacer()
                        }
                        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 0))
                        
                    }
                    
                    VStack {
                        HStack {
                            Image(systemName: "hand.thumbsup.circle")
                            Text("Interests")
                                .font(.title2)
                                .bold()
                            
                            Spacer()
                        }
                        .padding([.horizontal], 16)
                        
                        HStack {
                            ForEach(user.interests, id: \.self) { interest in
                                Text("\(interest),")
                            }
                            
                            Spacer()
                        }
                        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 0))
                        
                    }
                    
                    VStack {
                        HStack {
                            Image(systemName: "brain.head.profile")
                            Text("Skills")
                                .font(.title2)
                                .bold()
                            
                            Spacer()
                        }
                        .padding([.horizontal], 16)
                        
                        HStack {
                            ForEach(user.skills, id: \.self) { skill in
                                Text("\(skill),")
                            }
                            
                            Spacer()
                        }
                        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 0))
                        
                    }
                }
            }
        }
        .navigationTitle("Netligher")
    }
}

struct UserDetails_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailsView(user: mock_user)
    }
}
