//
//  ViewController.swift
//  MyUIKit
//
//  Created by 최안용 on 10/30/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButotn: UIButton!
     
    override func viewDidLoad() {//스토리보드에 있는 것을 다 그림, 따라서 해당 메서드 내부에 쓰는 코드는 스토리보드를 그린 후 이므로 출력은 스토리보드 화면에 함수 내부의 코드를 적용시킨 후의 화면이 나온다.
        super.viewDidLoad()
        view.backgroundColor = .green //타입은 UIColor, SwiftUI에서 사용한 Color과는 다른 타입이다.
        // Do any additional setup after loading the view.
    }

    @IBAction func didMyButtonTabbed(_ sender: Any) {
        myLabel.text = "Hello UIKit"
    }
    
    
}

