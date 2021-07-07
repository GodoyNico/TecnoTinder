//
//  ViewController.swift
//  TecnoTinder
//
//  Created by Nicolas Godoy on 07/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameAppLabel: UILabel!
    @IBOutlet weak var appDescription: UILabel!
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var senhaLabel: UITextField!
    @IBOutlet weak var confirmLabel: UILabel!
    @IBOutlet weak var emailButton: UIButton!
    @IBOutlet weak var appleButton: UIButton!
    @IBOutlet weak var copyrightLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailButton.layer.cornerRadius = 25
        appleButton.layer.cornerRadius = 25
        confirmLabel.isHidden = true
        
//        nameAppLabel.text = NSLocalizedString("titleAppDescription", comment: "")
//        appDescription.text = NSLocalizedString("labelAppDescription", comment: "")
//        copyrightLabel.text = NSLocalizedString("copyrightLabel", comment: "")
        
        nameAppLabel.setLabelText(for: "titleAppDescription")
        appDescription.setLabelText(for: "labelAppDescription")
        copyrightLabel.setLabelText(for: "copyrightLabel")
    }
    
    @IBAction func loginEmail(_ sender: UIButton) {
        
        confirmLabel.isHidden = true
        
        guard let email = emailLabel.text, emailLabel.text?.count != 0 else {
            confirmLabel.isHidden = false
            confirmLabel.text = NSLocalizedString("insertEmail", comment: "")
            return
        }
        
        guard let senha = senhaLabel.text, senhaLabel.text?.count != 0 else {
            confirmLabel.isHidden = false
            confirmLabel.text = NSLocalizedString("insertPassword", comment: "")
            return
        }
        
        confirmLabel.isHidden = false
        confirmLabel.text = NSLocalizedString("loggedSuccessfully", comment: "")
    }
    
    @IBAction func loginApple(_ sender: UIButton) {
        confirmLabel.isHidden = false
        confirmLabel.text = NSLocalizedString("loggedApple", comment: "")
    }
}

extension UILabel {
    
    func setLabelText(for key: String) {
        self.text = NSLocalizedString(key, comment: "")
    }
}

