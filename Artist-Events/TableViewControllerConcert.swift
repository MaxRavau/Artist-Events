//
//  TableViewControllerConcert.swift
//  Artist-Events
//
//  Created by Maxime Ravau on 11/04/2017.
//  Copyright © 2017 Maxime Ravau. All rights reserved.
//

import UIKit

class TableViewControllerConcert: UITableViewController {

    var selectedConcert: Concert?
    
    
    var currentArtist: Artist?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ((currentArtist?._listeConcert.count)! + 1)
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let index: Int = indexPath.row
        
        if index == 0{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Prototype2", for: indexPath) as! TableViewCellConcert

        cell.imageArtist.image = currentArtist?._image
        cell.labelName.text = currentArtist?._name
            
        cell.labelNameEffet.layer.cornerRadius = 15
        cell.labelNameEffet.layer.masksToBounds = true

        return cell
        
        }else{
            
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "Prototype3", for: indexPath) as! TableViewCellConcert
            
            let concert: Concert = (currentArtist?._listeConcert[indexPath.row - 1])!
            
            cell1.labelDate.text = concert._date
            cell1.labelArene.text = concert._arene
            cell1.labelpays.text = concert._pays
            
            cell1.cellConcertEffet.layer.cornerRadius = 15
            cell1.cellConcertEffet.layer.masksToBounds = true
            cell1.cellConcertEffet.layer.borderWidth = 1
            cell1.cellConcertEffet.layer.borderColor = UIColor.white.cgColor
            
            return cell1
        }
    
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let index: Int = indexPath.row
        
        if index == 0 {
            
            
            return 250
        }else{
            
            
            return 80
        }
        
    }
  
}
