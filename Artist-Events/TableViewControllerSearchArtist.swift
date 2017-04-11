//
//  TableViewControllerSearchArtist.swift
//  Artist-Events
//
//  Created by Maxime Ravau on 11/04/2017.
//  Copyright © 2017 Maxime Ravau. All rights reserved.
//

import UIKit

class TableViewControllerSearchArtist: UITableViewController, UISearchResultsUpdating {

    var selectedArtist: Artist?
    
    var filteredArtist = [Artist]()
    
    var searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        filteredArtist = listeArtist
        
        searchController.searchResultsUpdater = self
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchBar.searchBarStyle = UISearchBarStyle.prominent
        searchController.searchBar.sizeToFit()
        
       tableView.tableHeaderView = searchController.searchBar
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
        if searchController.searchBar.text! == "" {
            
            filteredArtist = listeArtist
        }else{
            
            filteredArtist = listeArtist.filter{ $0._name.lowercased().contains((searchController.searchBar.text?.lowercased())!)}
        }
        
        self.tableView.reloadData()
        
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
        return filteredArtist.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Prototype1", for: indexPath) as! TableViewCellSearchArtist
        
        cell.labelName.text = filteredArtist[indexPath.row]._name
        cell.labelName.layer.cornerRadius = 15
        cell.labelName.layer.masksToBounds = true
        cell.labelName.layer.borderColor = UIColor.white.cgColor
        cell.labelName.layer.borderWidth = 0.5
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.selectedArtist = filteredArtist[indexPath.row]
        
        self.performSegue(withIdentifier: "segue.concert", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextScene = segue.destination as! TableViewControllerConcert
        
        if (segue.identifier == "segue.concert"){
            
            
            print("showConcert \(filteredArtist)")
            nextScene.currentArtist = self.selectedArtist
            
        }
        
        
    }
   
}
