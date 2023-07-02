//
//  ViewController.swift
//  MyTableView
//
//  Created by Ritik Sharma on 16/12/22.
//

import UIKit

class ViewController: UIViewController {

    private var tableView = MyTableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame = view.frame
        view.addSubview(tableView)
        tableView.myDelegate = self
        tableView.myDataSource = self
    }
    


}

extension ViewController: MyTableViewDelegate{
    func tableView(_ tableView: MyTableView) {
        
    }
    
    
    
  
    
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
    }
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        
    }
}
