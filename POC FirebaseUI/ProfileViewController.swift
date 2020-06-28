//
//  ProfileViewController.swift
//  POC FirebaseUI
//
//  Created by Christopher San Diego on 6/28/20.
//  Copyright © 2020 Christopher San Diego. All rights reserved.
//

import UIKit
import Firebase

class ProfileViewController: UIViewController {

    @IBOutlet weak var displayName: UILabel!
    @IBOutlet weak var email: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayName.text = Auth.auth().currentUser?.displayName
        email.text = Auth.auth().currentUser?.email
    }

}
