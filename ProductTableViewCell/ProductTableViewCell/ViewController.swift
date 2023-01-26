//
//  ViewController.swift
//  ProductTableViewCell
//
//  Created by Mac on 25/01/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var productTableView: UITableView!
    
    
    //var productIds = [1,2,3,4,5,6]
    var StationaryPrice = [10,50,120,05,15,800]
    var Stationary : [String] = ["Pen","NoteBook","Book","Pencil","Eraser","Bag"]
    var StationaryImages : [String] = ["Pen","NoteBook","Book","Pencil","Eraser","Bag"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productTableView.dataSource = self
        productTableView.delegate = self
        
        let uiNib = UINib(nibName: "ProductTableViewCell", bundle: nil)
        self.productTableView.register(uiNib, forCellReuseIdentifier: "ProductTableViewCell")
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Stationary.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let productTableViewCell = self.productTableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as! ProductTableViewCell
        
        
        
       // productTableViewCell.productIdLabel.text = String(productIds[indexPath.row])
        productTableViewCell.productTitleLabel.text = Stationary[indexPath.row]
        productTableViewCell.imageView?.image = UIImage(named: StationaryImages[indexPath.row])
        productTableViewCell.productPriceLabel.text =  String(StationaryPrice[indexPath.row])
        
        return productTableViewCell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: productTableView.frame.width, height: 150))
        view.backgroundColor = .white
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: productTableView.frame.width, height: 30))
        label.text = "                 Stationary"
        label.font = .systemFont(ofSize: 40)
        view.addSubview(label)
        return view
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        220.0
    }
}

