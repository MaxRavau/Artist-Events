//
//  Artist.swift
//  Artist-Events
//
//  Created by Maxime Ravau on 11/04/2017.
//  Copyright © 2017 Maxime Ravau. All rights reserved.
//

import UIKit

class Artist {
    
    
        
        var _name : String = ""
        var _image : UIImage = #imageLiteral(resourceName: "gradur-jpg4")
        var _listeConcert : [Concert] = []
        
        
        init(name: String, image: UIImage, listeConcert: [Concert]) {
            
            self._name = name
            self._image = image
            self._listeConcert = listeConcert
 
        
    }

}
