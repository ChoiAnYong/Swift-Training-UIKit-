//
//  MyViewController.swift
//  MyUIKit
//
//  Created by 최안용 on 10/31/23.
//

import UIKit
 

protocol AdminDelegate { //위임이 되면 해야할 것
    func doTask()
}


class MyViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    var admin: Admin?//관리자를 만든다.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        admin = Admin(delegate: self)//관리자를 만들고 위임을 self(MyViewController)에 했다
    }
    
    @IBAction func didTabButton(_ sender: Any) {
        if let name = nameTextField.text{
            helloLabel.text = "Hello \(name)!"
        }
        admin?.delegate.doTask()
    }
}

extension MyViewController: AdminDelegate {//MyViewController가 위임을 받았다.
    func doTask() {//위임을 받으면 할 것을 정의
        print("저 지금 일 잘하고 있습니다!")
    }
}

struct Admin { //Admin(관리자)이 위임을 한다.
    var delegate: AdminDelegate//위임 받으면 해야할 일
}
