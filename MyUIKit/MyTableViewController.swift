//
//  MyTableViewController.swift
//  MyUIKit
//
//  Created by 최안용 on 10/31/23.
//

import UIKit

class MyTableViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    let cellData = ["Hello TableView", "This is UIKit", "Welcome!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        myTableView.backgroundColor = .green
        myTableView.delegate = self
        myTableView.dataSource = self //이것 또한 delegate 패턴이다.
    }
}

extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    //정의만 해도 호출 없이도 실행된다
    func numberOfSections(in tableView: UITableView) -> Int { //섹션이 몇 개인지
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //한 섹션에 몇개의 row가 들어가는지
        return cellData.count//cell의 개수를 리턴해준다.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {//하나의 셀을 그릴 때 어떤 셀이 그려져야 할지
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = cellData[indexPath.row] //cell를 하나 만들고 설정한다.
        return cell//해당 cell을 린턴해준다.
    }
}
