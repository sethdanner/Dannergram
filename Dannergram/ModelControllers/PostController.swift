//
//  PostController.swift
//  Dannergram
//
//  Created by Seth Danner on 7/26/18.
//  Copyright © 2018 Seth Danner. All rights reserved.
//

import UIKit

class PostController {
    
    static var sharedController = PostController()
    var posts: [Post] = []
    
    func addComment(toPost post: Post, text: String, completion: @escaping (Comment) -> Void) {
        
        let comment = Comment(text: text, post: post)
        
        completion(comment)
        return
    }
    
    func createPostWith(image: UIImage, caption: String, completion: @escaping (Post) -> Void) {
        
        guard let data =  UIImageJPEGRepresentation(image, 0.8) else { return }
        
        let post = Post(photoData: data)
        completion(post)
        return
    }
}

