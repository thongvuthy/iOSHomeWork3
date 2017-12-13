//
//  DescriptionTableViewCell.swift
//  ThongVuthy_Homework3
//
//  Created by Adimax Lee on 12/12/17.
//  Copyright © 2017 Adimax Lee. All rights reserved.
//

import UIKit

class DescriptionTableViewCell: UITableViewCell {

    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var numberOfViews: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configureCell(strings : [String]){
     title.text = strings[0]
     numberOfViews.text = strings[1]
    }
}
