//
//  MainTableViewController.swift
//  ThongVuthy_Homework3
//
//  Created by Adimax Lee on 7/12/17.
//  Copyright © 2017 Adimax Lee. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    @IBOutlet weak var navigationBarz: UINavigationItem!
    @IBOutlet var mainTable: UITableView!
    @IBOutlet weak var barItem: UIBarButtonItem!
    
    var argument : [Any]?
    var data = [
        [ [#imageLiteral(resourceName: "yada&cheko"), #imageLiteral(resourceName: "MProduction")], ["ស្រឡាញ់គ្នាហេតុអ្វីចង់បែក - យ៉ាដា ft. ឆេកូ VCD.vol 76 M Production ", "M Production", "2M Views", "5 Hours ago"] ],
        
        [[#imageLiteral(resourceName: "charlieputh"), #imageLiteral(resourceName: "charliephoto")], ["Collection of Hit Songs of Charlie Puth 2017 [HQ Audio]", "English Lyrics", "198K Views", "2 Years ago"]],
        [ [#imageLiteral(resourceName: "jfla"), #imageLiteral(resourceName: "jflaphoto") ], ["Camila Cabella - Havana (Cover By JFla) [Lyrics Video]","JFla Music", "2.5M Views", "3 Months ago"]],
        [ [#imageLiteral(resourceName: "howlong"), #imageLiteral(resourceName: "charliephoto")], ["Charlie Puth - How Long Lyrics","WeLoveCharlie", "189K Views", "6 Months ago"]],
        [ [#imageLiteral(resourceName: "chh'etchet"), #imageLiteral(resourceName: "jrecordphoto")], ["ឆ្អែតចិត្ត - Chh'et Chet [Enough] (Official Lyrics Video)","J.Record X Grave", "345K Views", "2 weeks ago"]],
        [ [#imageLiteral(resourceName: "bante"), #imageLiteral(resourceName: "khmerchordphoto")], ["បានទេ Ban Te Chord - SWSB ","KhmerChords", "345K Views", "2 weeks ago"]]
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "TableViewCellX", bundle: nil)
        mainTable.register(nib, forCellReuseIdentifier: "tablecellx")
        
//        let imageView = UIImageView(image: #imageLiteral(resourceName: "new-youtube-logo"))
//       imageView.contentMode = .scaleAspectFit
//        navigationBarz.titleView = imageView
        barItem.setBackgroundImage(#imageLiteral(resourceName: "youtube-logo25"), for: .normal, barMetrics: .default)
      
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        argument = data[indexPath.row]
        performSegue(withIdentifier: "show", sender: self)
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecellx", for: indexPath) as! TableViewCellX

        cell.configureCell(images: data[indexPath.row][0] as! [UIImage], texts: data[indexPath.row][1] as! [String])
        return cell
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController : DetailViewController = segue.destination as! DetailViewController
        detailViewController.parameter = argument
    }

}
