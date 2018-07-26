//
//  Comment.swift
//  Dannergram
//
//  Created by Seth Danner on 7/26/18.
//  Copyright © 2018 Seth Danner. All rights reserved.
//

import Foundation

class Comment {
    
    let text: String
    let timestamp: Date
    let post: Post
    
    init(text: String, timestamp: Date, post: Post) {
        self.text = text
        self.timestamp = Date()
        self.post = post
    }
}

