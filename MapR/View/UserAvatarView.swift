//
//  UserAvatarView.swift
//  MapR
//
//  Created by Fahim Shahriar on 1/11/21.
//

import Kingfisher
import SwiftUI

struct UserAvatarView: View {
    let imageUrl: String
    
    var body: some View {
        HStack {
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .shadow(radius: 3)
                .padding([.horizontal, .vertical], 16)
        }
        .cornerRadius(50)
    }
}

struct UserAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        UserAvatarView(imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334")
    }
}
