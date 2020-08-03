//
//  CreateTableViewController.swift
//  Color HW
//
//  Created by Акнур on 8/1/20.
//  Copyright © 2020 Акнур. All rights reserved.
//
import UIKit
class CreateTableViewController: UITableViewController,UITableViewDelegate, UITableViewDataSource {
    let colors = [blue.png, pink.png, green.png, orange.png, purple.png]
    let cellReuseIdentifier = "cell"
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
         
        cell.textLabel?.text = self.colors[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
}
