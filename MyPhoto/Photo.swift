//
//  Post.swift
//  MyPhoto
//
//  Created by Chhai Chivon on 1/20/20.
//  Copyright © 2020 Chhai Chivon. All rights reserved.
//

import Foundation


struct Photo : Decodable {
    
    let albumId : Int
    let id : Int
    let title : String
    let url : String
    let thumbnailUrl : String
}
