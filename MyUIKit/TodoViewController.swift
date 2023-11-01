//
//  TodoViewController.swift
//  MyUIKit
//
//  Created by 최안용 on 11/1/23.
//

import UIKit

struct TodoItem {
    let title: String
    var isCompleted: Bool
}

class TodoViewController: UIViewController {
    //todoCell

    @IBOutlet weak var todoTableView: UITableView!
    var data: [TodoItem] = [
        TodoItem(title: "커밋하기", isCompleted: false),
        TodoItem(title: "운동하기", isCompleted: true)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        todoTableView.backgroundColor = .brown
        todoTableView.dataSource = self //테이블뷰가 위임 했다.(self가 테이블뷰에 위임자에 들어갔다.
        todoTableView.delegate = self //테이블뷰가 위임 했다.(self가 테이블뷰에 위임자에 들어갔다.
    }

}

extension TodoViewController: UITableViewDelegate, UITableViewDataSource {
    //몇 개를 만들지
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    //
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let myAction = UIContextualAction(style: .normal, title: "완료") { action, view, completionHandler in
            self.data[indexPath.row].isCompleted.toggle()//Bool이 true false를 왔다 갔다 함
            self.todoTableView.reloadData() //다시 그려달라고 요청하는 부분(없으면 화면이 안 바뀜
            completionHandler(true)
        }
        return UISwipeActionsConfiguration(actions: [myAction])
    }
    
    //cell을 만든다.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = todoTableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row].title
        
        if data[indexPath.row].isCompleted {
            cell.textLabel?.textColor = .green
        } else {
            cell.textLabel?.textColor = .red
        }
        
         
        return cell
    }
    
    //애니메이션 추가하는 메서드
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        todoTableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
