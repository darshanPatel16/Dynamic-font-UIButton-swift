//
//  ViewController.swift
//  DynamicFontSizeDemo
//
//  Created by Kiprosh-201902 on 13/10/19.
//  Copyright © 2019 Kiprosh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var productList: [[String: Any]] = [["name": "Test", "desc": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
                                        ["name": "Test1", "desc": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
                                        ["name": "Test2", "desc": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
                                        ["name": "Test3", "desc": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
                                        ["name": "Test4", "desc": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
                                        ["name": "Test5", "desc": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
                                        ["name": "Test6", "desc": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
                                        ["name": "Test7", "desc": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
                                        ["name": "Test8", "desc": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
                                        ["name": "Test9", "desc": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Demo"
        tableView.tableFooterView = UIView()
        tableView.estimatedRowHeight = 50.0
        tableView.rowHeight = UITableView.automaticDimension
        tableView.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as? ProductCell else {
            return UITableViewCell()
        }
        let productDetail = productList[indexPath.row]
        cell.nameLabel.text = productDetail["name"] as? String
        cell.descriptionlabel.text = productDetail["desc"] as? String
        return cell
    }
    
    
}

