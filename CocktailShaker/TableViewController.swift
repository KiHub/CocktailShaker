//
//  TableViewController.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 23.11.2021.
//

import UIKit
import SDWebImage

class TableViewController: UITableViewController {
    
    
    
    var titleMovie = "zzzz"
    var plotMovie = ""
    var imageMovie = ""
    var descriptionMovie = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundView = UIImageView(image: UIImage(named: "background"))
        //   title = "Especially for you:"
 

    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellTitle", for: indexPath) as! TitleCell
            cell.title.text = titleMovie
            
            return cell
        }
        if indexPath.row < 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellImage", for: indexPath) as! ImageCell
            
            let myImageViewe: UIImageView = {
                let myImageViewe = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 465))
                myImageViewe.contentMode = .scaleAspectFill
                myImageViewe.layer.cornerRadius = 30
                myImageViewe.layer.masksToBounds = true
                myImageViewe.clipsToBounds = true
  
                return myImageViewe
            }()

            guard let url = URL(string: imageMovie) else { return cell }

            myImageViewe.center = cell.center
            myImageViewe.sd_setImage(with: url, completed: nil)
            cell.addSubview(myImageViewe)
            
            return cell
        }
        
        if indexPath.row < 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellDescription", for: indexPath) as! PlotCell
            cell.plotText.text = plotMovie
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellTitle", for: indexPath)
        
        return cell
    }
    
    
}



//extension TableViewController {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//    }
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCellIngridients", for: indexPath) as? IngridientsCollectionViewCell
//        return cell!
//
//    }
//}

