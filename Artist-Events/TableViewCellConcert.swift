//
//  TableViewCellConcert.swift
//  Artist-Events
//
//  Created by Maxime Ravau on 11/04/2017.
//  Copyright © 2017 Maxime Ravau. All rights reserved.
//

import UIKit

class TableViewCellConcert: UITableViewCell {

    @IBOutlet var labelName: UILabel!
    @IBOutlet var imageArtist: UIImageView!
    @IBOutlet var labelNameEffet: UIVisualEffectView!
    @IBOutlet var cellConcertEffet: UIVisualEffectView!
    @IBOutlet var labelDate: UILabel!
    @IBOutlet var labelArene: UILabel!
    @IBOutlet var labelpays: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
