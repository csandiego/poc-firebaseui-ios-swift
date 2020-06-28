//
//  LoginViewController.swift
//  POC FirebaseUI
//
//  Created by Christopher San Diego on 6/28/20.
//  Copyright © 2020 Christopher San Diego. All rights reserved.
//

import UIKit
import FirebaseUI

class LoginViewController: UIViewController {

    @IBAction func login(_ sender: Any) {
        if let ui = FUIAuth.defaultAuthUI() {
            ui.providers = [FUIEmailAuth(), FUIGoogleAuth()]
            let vc = ui.authViewController()
            self.present(vc, animated: true, completion: nil)
        }
    }
    
}
