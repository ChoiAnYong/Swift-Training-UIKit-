 //
//  ProfileDetailViewController.swift
//  MyUIKit
//
//  Created by 최안용 on 11/2/23.
//

import UIKit

class ProfileDetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var inputText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = inputText
    }
}
