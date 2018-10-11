//
//  ViewController.swift
//  Sololearn Swift 4 Fundamentals App
//
//  Created by Denis Aleksandrov on 10/9/18.
//

import UIKit

class ViewController: UIViewController {

    var item: Item?
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!

    @IBAction func setLabelText(_ sender: UIButton) {
        nameLabel.text = nameTextField.text
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let item = item {
            nameTextField.text = item.name
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as AnyObject? === saveButton {
            let name = nameTextField.text ?? ""
            item = Item(name: name)
        }
    }
}

