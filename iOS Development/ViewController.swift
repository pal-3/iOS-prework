//
//  ViewController.swift
//  iOS Development
//
//  Created by PAL NEEMA on 1/30/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var schoolName: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBAction func stepperDidChange(_ sender: UIStepper){
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton){
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        let introduction = "Hello!! My name is \(firstName.text!) \(lastName.text!) and I am currently studying in \(schoolName.text!) and am in my \(year!) year. I own \(numberOfPetsLabel.text!) pet/pets. It is \(morePetsSwitch.isOn) that I want more pets."
        
        print(introduction)
        
        let alertControl = UIAlertController(title: "About me :)", message: introduction, preferredStyle: .alert)
        
        //to dismiss the box once it opens up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        //passing this action to alertcontroller to dismiss it
        alertControl.addAction(action)
        
        present(alertControl, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

