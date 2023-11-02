//
//  IndigoViewController.swift
//  MyUIKit
//
//  Created by 최안용 on 11/2/23.
//

import UIKit

class IndigoViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    var inputName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        name.text = inputName
    }
}
