//
//  DeveloperInfoTableViewCell.swift
//  ThongVuthy_Homework3
//
//  Created by Adimax Lee on 12/12/17.
//  Copyright © 2017 Adimax Lee. All rights reserved.
//

import UIKit

class DeveloperInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var devProfile: UIImageView!
  
    @IBOutlet weak var devName: UILabel!
    
    @IBOutlet weak var devSubscriber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func confifgureDevCell(_ image : UIImage, name: String, suscriber : String ){
        devProfile.image = image
        devName.text = name
        devSubscriber.text = suscriber
    }
    
}
