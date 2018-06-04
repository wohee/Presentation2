//
//  PlusInfoMenViewController.swift
//  Project2
//
//  Created by SWUCOMPUTER on 2018. 6. 3..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

//남자회원을 추가하는 화면

import UIKit
import CoreData

class PlusInfoMenViewController: UIViewController,UITextFieldDelegate{
    
    @IBOutlet var nameText: UITextField!
    @IBOutlet var phoneText: UITextField!
    @IBOutlet var weightText: UITextField!
    @IBOutlet var muscleText: UITextField!
    @IBOutlet var fatText: UITextField!
    @IBOutlet var ptTeacherText: UITextField!
    @IBOutlet var ptDateText: UITextField!
    @IBOutlet var requireText: UITextField!
    
    func getContext () -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func savePressed(_ sender: UIBarButtonItem) {
        
        let context = getContext()
        
        let entity = NSEntityDescription.entity(forEntityName: "MenMembers", in: context)
        let object = NSManagedObject(entity: entity!, insertInto: context)
        
        object.setValue(nameText.text, forKey: "name")
        object.setValue(phoneText.text, forKey: "phone")
        object.setValue(weightText.text, forKey: "weight")
        object.setValue(muscleText.text, forKey: "muscle")
        object.setValue(fatText.text, forKey: "fat")
        object.setValue(ptTeacherText.text, forKey: "teacher")
        object.setValue(ptDateText.text, forKey: "ptDate")
        object.setValue(requireText.text, forKey: "require")
        
        do {
            try context.save()
            print("saved!")
        } catch let error as NSError {
            print("Could not save \(error), \(error.userInfo)")
        }
        
        // 현재의 View를 없애고 이전 화면으로 복귀
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
