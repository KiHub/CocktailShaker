//
//  IngridientsTableViewCell.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 24.11.2021.
//

import UIKit

class IngridientsTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func regisrerCollectionView<DataSource:UICollectionViewDataSource>(datasource:DataSource) {
        self.collectionView.dataSource = datasource
        
    }

}
