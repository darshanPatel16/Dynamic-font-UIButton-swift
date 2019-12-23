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
    var productList: [[String: Any]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Demo"
        getProductList()
        tableView.tableFooterView = UIView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func getProductList() {
      for i in 1...10 {
        productList.append(["name": "Test \(i)", "desc": "Lorem Ipsum is simply dummy text of the printing and typesetting industry."])
      }
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
        cell.descriptionLabel.text = productDetail["desc"] as? String
        return cell
    }
    
    
}

