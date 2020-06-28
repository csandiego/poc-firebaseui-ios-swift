//
//  ViewController.swift
//  POC FirebaseUI
//
//  Created by Christopher San Diego on 6/23/20.
//  Copyright © 2020 Christopher San Diego. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Auth.auth().addStateDidChangeListener { (auth, user) in
            if let _ = self.presentedViewController {
                self.dismiss(animated: true, completion: nil)
            }
            self.performSegue(withIdentifier: user == nil ? "login" : "home", sender: self)
        }
    }


}

