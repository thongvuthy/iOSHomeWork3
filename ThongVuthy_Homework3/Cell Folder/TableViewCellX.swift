//
//  TableViewCell.swift
//  ThongVuthy_Homework3
//
//  Created by Adimax Lee on 8/12/17.
//  Copyright © 2017 Adimax Lee. All rights reserved.
//

import UIKit

class TableViewCellX: UITableViewCell {

    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var userprofile: UIImageView!

  
    @IBOutlet weak var descriptionz: UILabel!
    
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var numberofviews: UILabel!
    
    @IBOutlet weak var dateposted: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    
    func configureCell(images : [UIImage], texts : [String]){
        userprofile.layer.cornerRadius = 29
        userprofile.clipsToBounds = true
        thumbnail.image = images.first!
        userprofile.image = images.last!
        descriptionz.text = texts[0]
        username.text = texts[1]
        numberofviews.text = texts[2]
        dateposted.text = texts[3]
    }
    
    
    
}
