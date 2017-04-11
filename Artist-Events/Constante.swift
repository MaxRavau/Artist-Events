//
//  Constante.swift
//  Artist-Events
//
//  Created by Maxime Ravau on 11/04/2017.
//  Copyright © 2017 Maxime Ravau. All rights reserved.
//

import UIKit



var listeArtist : [Artist] = [
    
    Artist(name: "Kendji Girac", image: #imageLiteral(resourceName: "Kendji_Girac1"), listeConcert: [
    
        Concert(date:"27 Juillet 2017", pays: "Paris, Fr", arene: "Bercy"),
        Concert(date:"30 Juillet 2017", pays: "Paris, Fr", arene: "Bercy")]
    
        ),

    Artist(name: "MHD", image : #imageLiteral(resourceName: "mhd"), listeConcert: [
        
        Concert(date:"27 Juillet 2017", pays: "Paris, Fr", arene: "Bercy"),
        Concert(date:"30 Juillet 2017", pays: "Paris, Fr", arene: "Bercy")]
                        
        ),
    
    Artist(name: "Gradur", image: #imageLiteral(resourceName: "gradur-jpg4"), listeConcert: [
        
        Concert(date:"27 Juillet 2017", pays: "Paris, Fr", arene: "Bercy"),
        Concert(date:"30 Juillet 2017", pays: "Paris, Fr", arene: "Bercy")]

    )]
