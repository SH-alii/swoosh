//
//  playerVC.swift
//  app-swoosh
//
//  Created by Alii Shareef on 8/11/17.
//  Copyright © 2017 Alii Shareef. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var btnCoeds: BorderButton!
    @IBOutlet weak var btnWomens: BorderButton!
    @IBOutlet weak var btnMens: BorderButton!
    @IBOutlet weak var btnNext: BorderButton!
    
    
    var Selected = ""
    
    var player: Player!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }

   
    @IBAction func onMensTapped(_ sender: Any){
        selectLeague(leagueType: "Mens", button: btnMens, color: UIColor.blue.cgColor )
    }
    @IBAction func onWomensTapped(_ sender: Any){
        selectLeague(leagueType: "Womens", button: btnWomens, color: UIColor.purple.cgColor )
    }
    @IBAction func onCoedsTapped(_ sender: Any){
        selectLeague(leagueType: "Coe-eds", button: btnCoeds, color: UIColor.orange.cgColor)
    }
    
    func selectLeague(leagueType: String, button: BorderButton, color: CGColor){
        player.desiredLeague = leagueType
        btnNext.isEnabled = true
        if Selected != leagueType
        {
            Untoggle(selected: Selected)
        }
        Selected = leagueType
        setColor(button: button, color: color)
    }
    
    func Untoggle(selected: String){
        
        switch Selected {
        case "Mens":
            setColor(button: btnMens, color: UIColor.white.cgColor)
        case "Womens":
            setColor(button: btnWomens, color: UIColor.white.cgColor)
        case "Coe-eds":
            setColor(button: btnCoeds, color: UIColor.white.cgColor)
        default:
            break
        }
    }
    
    func setColor(button: BorderButton, color: CGColor)
    {
        button.layer.borderColor = color
        
    }
    
    @IBAction func unwindFromLevelVC(segue: UIStoryboardSegue){
        
        
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
            
            
        }
    }
    
    
    
    
    
    
}
