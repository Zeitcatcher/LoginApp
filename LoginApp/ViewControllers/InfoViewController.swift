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
        view.addVerticalGradienLayer()
        nameLabel.text = user.person.fullName
        infoLabel.text = "\(user.person.hobbies) - \(user.person.job.jobTitle)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let thirdVC = segue.destination as? PhotoViewController else { return }
        thirdVC.user = user
    }
}
