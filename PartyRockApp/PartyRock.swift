//
//  PartyRock.swift
//  PartyRockApp
//
//  Created by Jaroslav Bažant on 21.08.17.
//  Copyright © 2017 DewDrops. All rights reserved.
//

import Foundation

class PartyRock {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle:String!
    
    init(imageURL:String, videoURL:String, title:String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = title
    }
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL:String {
        return _videoURL
    }
    
    var videoTitle:String {
        return _videoTitle
    }
}
