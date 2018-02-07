//
//  Menter.swift
//  Swift4MenterList
//
//  Created by tatsumi kentaro on 2018/02/03.
//  Copyright © 2018年 tatsumi kentaro. All rights reserved.
//

import UIKit


class Menter {
    
    var name:String!
    var course:String!
    var image_name:String!
    
    init(name:String,course:String,image_name:String) {
        self.name = name
        self.image_name = image_name
        self.course = course
        
        
    }
    
    
    func  getImage() -> UIImage {
        return UIImage(named: image_name)!
    }
    
    
    
}
