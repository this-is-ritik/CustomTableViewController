//
//  MyTableView.swift
//  MyTableView
//
//  Created by Ritik Sharma on 16/12/22.
//

import UIKit

protocol MyTableViewDelegate{
    func tableView(_ tableView: MyTableView,
}
protocol MyTableViewDataSource{
    func tableView(_ tableView: MyTableView, numberOfRowsInSection section: Int) -> Int
    
    func tableView(_ tableView: MyTableView, cellForRowAt indexPath: IndexPath) -> MyTableViewCell
}


class MyTableViewCell: UIView{
    
}
class MyTableView: UIScrollView {
    
    private let stackView = UIStackView()
    
    var myDelegate:AnyObject? = nil
    var myDataSource:AnyObject? = nil
    
    private var queue = Array<Dictionary<String,UINib>>()
    private var registeredCells = Dictionary<String,UINib>()
    private var deque = Array<Dictionary<String,UINib>>()
    override init(frame: CGRect) {
        super.init(frame: frame)
        stackView.frame = frame
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    func register(_ nib :UINib?,forCellReuseIdentifier identifier: String){
        if self.registeredCells[identifier] == nil{
            self.registeredCells[identifier] = nib
            var dict = Dictionary<String,UINib>()
            dict[identifier] = nib
            self.queue.append(dict)
        }
        else{
            print("can't register more than one cell with same identifier")
        }
    }
    func register(_ nib:UINib?,forHeaderFooterViewReuseIdentifier identifier: String){
        self.register(nib, forCellReuseIdentifier: identifier)
    }
    
    
    
    

}


