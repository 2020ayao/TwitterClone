//
//  User.swift
//  TwitterClone
//
//  Created by Adam Yao on 10/16/22.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable{
    @DocumentID var id: String?
    let username: String
    let fullname: String
//    let profileImageUrl: String
    let email: String
    
}
