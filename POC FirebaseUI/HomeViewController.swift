//
//  HomeViewController.swift
//  POC FirebaseUI
//
//  Created by Christopher San Diego on 6/25/20.
//  Copyright © 2020 Christopher San Diego. All rights reserved.
//

import UIKit
import FirebaseUI

class HomeViewController: UIViewController {

    @IBAction func logout(_ sender: Any) {
        try! FUIAuth.defaultAuthUI()?.signOut()
    }
    
}
