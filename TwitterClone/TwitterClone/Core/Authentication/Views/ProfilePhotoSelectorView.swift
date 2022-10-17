//
//  ProfilePhotoSelectorView.swift
//  TwitterClone
//
//  Created by Adam Yao on 10/16/22.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    var body: some View {
        VStack {
            AuthHeaderView(title1: "Create your account", title2: "Add a profile photo")
            
            Button {
                print("Pick image here")
            } label: {
                Image(systemName: "plus.circle")
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFill()
                    .frame(width: 180, height: 180)
                    .padding(.top, 44)
            }

            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
