//
//  playerVC.swift
//  app-swoosh
//
//  Created by Alii Shareef on 8/11/17.
//  Copyright © 2017 Alii Shareef. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func unwindFromLevelVC(segue: UIStoryboardSegue){
        
        
    }
    
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
}
