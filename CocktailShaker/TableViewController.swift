//
//  TableViewController.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 23.11.2021.
//

import UIKit


class TableViewController: UITableViewController, UICollectionViewDataSource {

    
    @IBOutlet weak var titleOutlet: UILabel!
    
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var ingridientImage: UIImageView!
    @IBOutlet weak var ingridirntCount: UILabel!

    @IBOutlet weak var fullRecipe: UILabel!
    
 //   var coctailManager = CoctailManager()
    var movieGenerator = MovieGenarator()
    var titleMovie = "zzzz"
    var plotMovie = ""
    var posterMovie = ""
    var descriptionMovie = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
  //      movieGenerator.delegate = self
      
        tableView.backgroundView = UIImageView(image: UIImage(named: "background"))
        title = "Especially for you:"
        
        print("Title movie:\(titleMovie)")
        
        
        
//        movieGenerator.onCompletion = { movie in
//           // print(movie.title)
//            print("Hello")
//            self.titleMovie = movie.title
//            self.posterMovie = movie.poster
//            print(self.titleMovie)
//            
//            
//        }
     //   movieGenerator.fetchMovieWithAlamofire()
       
        
        
      //  titleOutlet.text = titleMovie ?? ""
        
       // fetchMovieWithAlamofire()
        
//        coctailManager.onCompletion = { gkass in
//            print(gkass.instructions)
//        }
        
        
            
        
      //  coctailManager.getNewCoctail(completionHandler: <#([CocktailResults]) -> Void#>)
      //  coctailManager.
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellTitle", for: indexPath) as! TitleCell
       //     cell.textLabel?.text = "Hello!"
//            cell.title.text = "\(titleMovie)"
//            print("Hey", titleMovie)
  //      cell.title.text = titleMovie
          //  name.text = titleMovie
     
            cell.title.text = titleMovie
                
         
        
            
            return cell
        }
        if indexPath.row < 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellImage", for: indexPath) as! ImageCell
       //     cell.imageView?.image = UIImage(data: poster)
            cell.posterMovie.image = UIImage(data: posterMovie)
            return cell
        }
        if indexPath.row < 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellIngridients", for: indexPath) as? IngridientsTableViewCell
            cell?.regisrerCollectionView(datasource: self)
            
            return cell!
        }
        if indexPath.row < 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellDescription", for: indexPath) as! PlotCell
            cell.plotText.text = plotMovie
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellTitle", for: indexPath)

        

        return cell
    }
    
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension TableViewController {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCellIngridients", for: indexPath) as? IngridientsCollectionViewCell
        return cell!
        
    }
}

//
//extension TableViewController {
//    
//    func getNewCoctail() {
//        
//        let urlString = "https://www.thecocktaildb.com/api/json/v1/1/random.php"
//        if let url = URL(string: urlString) {
//            let session = URLSession(configuration: .default)
//            let task = session.dataTask(with: url) { (data, response, error) in
//         
//                
//                if let safeData = data {
//                    let dataString = String(data: safeData, encoding: .utf8)
//                    print(dataString!)
//                }
//            }
//            task.resume()
//        }
//    }
//    
//    func parseJSON(_ data: Data) -> [DrinksResults] {
//
//        let decoder = JSONDecoder()
//        do {
//            let decodedData = try decoder.decode(DrinksResults.self, from: data)
//
//            let coctailName = decodedData.drinks
//            print(coctailName)
//            return coctailName
//
//        } catch {
//           // delegate?.didFailWithError(error: error)
//            return error
//        }
//    }
    


//extension TableViewController: MovieGenaratorDelegate {
//    func updateTable(_: MovieGenarator, with movie: Movie) {
//        print("Delegate \(movie.actors)")
//        titleMovie = movie.title
//
//
//    }
//
//
//
//}
