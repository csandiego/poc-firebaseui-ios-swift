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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func logout(_ sender: Any) {
        try! FUIAuth.defaultAuthUI()?.signOut()
    }
    
}
