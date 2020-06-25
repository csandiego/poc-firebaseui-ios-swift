//
//  ViewController.swift
//  POC FirebaseUI
//
//  Created by Christopher San Diego on 6/23/20.
//  Copyright © 2020 Christopher San Diego. All rights reserved.
//

import UIKit
import Firebase
import FirebaseUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Auth.auth().addStateDidChangeListener { (auth, user) in
            if let _ = self.presentedViewController {
                self.dismiss(animated: true, completion: nil)
            }
            if let _ = user {
                self.performSegue(withIdentifier: "home", sender: nil)
            } else if let ui = FUIAuth.defaultAuthUI() {
                ui.providers = [FUIGoogleAuth()]
                ui.shouldHideCancelButton = true
                let vc = ui.authViewController()
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
            }
        }
    }


}

