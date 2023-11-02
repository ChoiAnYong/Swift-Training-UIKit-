//
//  GreenViewController.swift
//  MyUIKit
//
//  Created by 최안용 on 11/2/23.
//

import UIKit

class GreenViewController: UIViewController {
    
    @IBOutlet weak var insertNameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //prepare 함수는 segue가 이동하기 직전에 불린다.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goNext" {
            let viewController = segue.destination as! IndigoViewController //타입캐스팅
            viewController.inputName = insertNameField.text!
        }
    }
}
