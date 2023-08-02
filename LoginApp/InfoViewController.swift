//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Arseniy Oksenoyt on 8/1/23.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = user.person.name
        infoLabel.text = user.person.hobbies
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let thirdVC = segue.destination as? PhotoViewController else { return }
        thirdVC.user = user
    }
}
