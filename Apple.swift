//
//  Apple.swift
//  IOS-List
//
//  Created by Junaid KHALID on 18/01/17.
//  Copyright © 2017 Junaid KHALID. All rights reserved.
//

import Foundation
import UIKit

class Apple {
    
    var name: String
    var photo: UIImage?
    var subtitle: String
    var date: String
    var author: String
    
    init(name: String, photo: UIImage?, subtitle: String, date: String, author: String) {
        self.name = name
        self.photo = photo
        self.subtitle = subtitle
        self.date = date
        self.author = author
    }
    
}