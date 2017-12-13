//
//  DetailViewController.swift
//  ThongVuthy_Homework3
//
//  Created by Adimax Lee on 9/12/17.
//  Copyright © 2017 Adimax Lee. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var detailTableView: UITableView!
    var parameter : [Any]?
    var imageParams : [UIImage]!
    var stringParams : [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageParams  = parameter![0] as! [UIImage]
        stringParams  = parameter![1] as! [String]
        imageView.image = imageParams.first!
        
        let nib = UINib(nibName : "DescriptionTableViewCell", bundle:nil)
        let nib1 = UINib(nibName : "ActionButtonsTableViewCell", bundle :nil)
        let nib2 = UINib(nibName : "DeveloperInfoTableViewCell", bundle:nil)
        
        detailTableView.register(nib, forCellReuseIdentifier: "descriptioncell")
        detailTableView.register(nib1, forCellReuseIdentifier: "actionbuttonscell")
        detailTableView.register(nib2, forCellReuseIdentifier: "developercell")
        
        
        self.detailTableView.delegate = self
        self.detailTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "descriptioncell") as! DescriptionTableViewCell
            cell.configureCell(strings: [ stringParams[0], stringParams[2]])
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "actionbuttonscell") as! ActionButtonsTableViewCell
            return cell
        } else if indexPath.row == 2 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "developercell") as! DeveloperInfoTableViewCell
            cell.confifgureDevCell(imageParams.last!, name: stringParams[1], suscriber: "3M Subscribers")
            return cell }
        
        return UITableViewCell()
    }
    


}
