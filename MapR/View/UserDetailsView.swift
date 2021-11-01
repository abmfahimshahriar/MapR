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
                    }
                    
                    VStack {
                        HStack {
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
                            Text("Interests")
                                .font(.title2)
                                .bold()
                            
                            Spacer()
                        }
                        .padding([.horizontal], 16)
                        
                        HStack {
                            Text("Cycling, Swimming, Trekking")
                            
                            Spacer()
                        }
                        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 0))
                        
                    }
                    
                    VStack {
                        HStack {
                            Text("Skills")
                                .font(.title2)
                                .bold()
                            
                            Spacer()
                        }
                        .padding([.horizontal], 16)
                        
                        HStack {
                            Text("Angular, React, Swift, Express.js")
                            
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
