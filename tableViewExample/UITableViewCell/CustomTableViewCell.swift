//
//  CustomTableViewCell.swift
//  tableViewExample
//
//  Created by Premiersoft on 29/08/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var labelCell: UILabel!
    
    
    @IBOutlet weak var imageCell: UIImageView!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        labelCell.text = "Gabriel"
        labelCell.numberOfLines = 2
//        labelCell.tintColor = .blue
        
      
        
        
    }

    
    func setupCell(title: String, image: String){
        labelCell.text = title
    
        
        imageCell.image = UIImage(systemName: image)
        imageCell.tintColor = .black
        imageCell.backgroundColor = .cyan
    }
    
    
//    Utilizamos quando queremos selecionar a celula
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
}
