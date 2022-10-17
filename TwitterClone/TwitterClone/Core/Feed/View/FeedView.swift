//
//  FeedView.swift
//  TwitterClone
//
//  Created by Adam Yao on 10/11/22.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        ZStack (alignment: .bottomTrailing){
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetRowView()
                            .padding()
                    }
                }
            }
            Button {
                showNewTweetView.toggle()
            } label: {
                Image(systemName: "square.and.pencil")
                    //.resizable(.)
                    .renderingMode(.template)
                    .frame(width:45, height: 45)
                
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView) {
                NewTweetView()
            }

        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
