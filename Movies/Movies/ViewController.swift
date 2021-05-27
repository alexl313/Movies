//
//  ViewController.swift
//  Movies
//
//  Created by user167306 on 3/4/21.
//  Copyright © 2021 user167306. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    var movies = ["Harry Potter Series", "Indiana Jones","Sinister 2","Star Wars","Truth or Dare", ]
    var placement = ["1","2","3","4","5","6","7","8","9","10"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
 func alert() {
         let alertController = UIAlertController(title: "ENTER A Movies",  message: "ENTER A PLACEMENT" , preferredStyle: .alert)
        alertController.addTextField { (fruitsTF) in
            alertController.addTextField { (vegtablesTF) in
                fruitsTF.placeholder = "Enter a Movie"
                vegtablesTF.placeholder = "Enter a Placement"
                
        let addButton = UIAlertAction(title: "Done", style: .default ) { (ACTION) in
            self.movies.append(fruitsTF.text!)
            self.placement.append(vegtablesTF.text!)
            self.tableView.reloadData()
        }
        alertController.addAction(addButton)
    }
        }
        present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func barButton(_ sender: Any) {
        alert()
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
        
        
    }
    
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "MoviesCell")
           cell?.textLabel?.text = movies[indexPath.row]
        cell?.detailTextLabel?.text = placement[indexPath.row]
           cell?.backgroundColor = .green
           cell?.textLabel?.textColor = .systemPink
           cell?.textLabel?.font = .monospacedDigitSystemFont(ofSize: 20, weight: .bold)
           cell?.imageView?.image = UIImage(named: "")
        return cell!
    
    
    
    
    
    

}

}
