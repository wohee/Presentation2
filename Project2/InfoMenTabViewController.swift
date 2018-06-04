//
//  InfoMenTabViewController.swift
//  Project2
//
//  Created by SWUCOMPUTER on 2018. 6. 3..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

//면

import UIKit
import CoreData

class InfoMenTabViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
 // @IBOutlet var membershipLabel: UILabel!
    @IBOutlet var ptDateLabel: UILabel!
    
    var detailInfo: NSManagedObject?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let member = detailInfo{
            nameLabel.text = member.value(forKey: "name") as? String
            phoneLabel.text = member.value(forKey: "phone") as? String
            ptDateLabel.text = member.value(forKey: "ptDate") as? String
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
