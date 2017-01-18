//
//  itemDetailViewController.swift
//  IOS-List
//
//  Created by Junaid KHALID on 18/01/17.
//  Copyright © 2017 Junaid KHALID. All rights reserved.
//

import UIKit

class itemDetailViewController: UIViewController {

    var apps : Apple?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = apps?.name
        subtitleLabel.text = apps?.subtitle
        dateLabel.text = apps?.date
        authorLabel.text = apps?.author
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
