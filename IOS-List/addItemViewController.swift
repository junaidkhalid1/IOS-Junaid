//
//  addItemViewController.swift
//  IOS-List
//
//  Created by Junaid KHALID on 19/01/17.
//  Copyright © 2017 Junaid KHALID. All rights reserved.
//

import UIKit

class addItemViewController: UIViewController {
    
    let apple = Apple.init(name: "Apple1", photo: nil, subtitle: "Iphone1", date: "March1", author: "Junaid1")
    

    @IBAction func saveButt(sender: UIButton) {
        
        nameTextView.text = apple.name
        categoryTextView.text = apple.subtitle
        
        
    }
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var categoryTextView: UITextField!
    @IBOutlet weak var nameTextView: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

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
