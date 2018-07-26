//
//  Post.swift
//  Dannergram
//
//  Created by Seth Danner on 7/26/18.
//  Copyright © 2018 Seth Danner. All rights reserved.
//

import UIKit

class Post {
    
    let photoData: Data?
    let timestamp: Date
    var comment: [Comment]
    
    var photo: UIImage? {
        guard let photoData = self.photoData else { return nil }
        return UIImage(data: photoData)
    }
    
    init(photoData: Data?, timestamp: Date = Date(), comment: [Comment] = []) {
        self.photoData = photoData
        self.timestamp = timestamp
        self.comment = comment
    }
}

