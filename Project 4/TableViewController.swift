//
//  TableViewController.swift
//  Project 4
//
//  Created by Eduard Tokarev on 30.12.2021.
//

import UIKit

class TableViewController: UITableViewController {
    var websites = ["apple.com", "hackingwithswift.com", "google.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
        
        title = "Website"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WebSite", for: indexPath)
        
        cell.textLabel?.text = websites[indexPath.row].uppercased()
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let websites = websites[indexPath.row]
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? ViewController {
        
            vc.tableWebSite = websites
        navigationController?.pushViewController(vc, animated: true)

        }

}

}
