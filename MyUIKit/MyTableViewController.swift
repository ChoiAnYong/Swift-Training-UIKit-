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
        myTableView.dataSource = self
    }
}

extension MyTableViewController: UITableViewDelegate,
    UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count//cell의 개수를 리턴해준다.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = cellData[indexPath.row] //cell를 하나 만들고 설정한다.
        return cell//해당 cell을 린턴해준다.
    }
}
