//
//  PhotoViewController.swift
//  LoginApp
//
//  Created by Arseniy Oksenoyt on 8/1/23.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoLabel.text = user.person.hobbies
    }
}
