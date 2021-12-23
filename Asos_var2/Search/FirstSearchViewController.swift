//
//  FirstSearchViewController.swift
//  Asos_var2
//
//  Created by Илья on 20.12.2021.
//

import UIKit

let listCells = ["FirsSearchCell1", "FirsSearchCell2",
                 "FirsSearchCell2", "FirsSearchCell2",
                 "FirsSearchCell2", "FirsSearchCell2",
                 "FirsSearchCell2", "FirsSearchCell3",
                 "FirsSearchCell4"]
var i = 0

extension UIImageView {
  public func maskCircle(anyImage: UIImage) {
    self.contentMode = UIView.ContentMode.scaleAspectFill
    self.layer.cornerRadius = self.frame.height / 2
    self.layer.masksToBounds = false
    self.clipsToBounds = true
    
   // make square(* must to make circle),
   // resize(reduce the kilobyte) and
   // fix rotation.
   self.image = anyImage
    
  }
}

class FirstSearchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: listCells[indexPath.row], for: indexPath) as! FirstSearchTableViewCell
        cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
        if (indexPath.row == 8){
            cell.FirstSearchBut31.layer.borderWidth = 1.0
            let yourColor : UIColor = UIColor( red: 0.75, green: 0.75, blue: 0.75, alpha: 1)
            cell.FirstSearchBut31.layer.borderColor = yourColor.cgColor
            
            cell.FirstSearchBut32.layer.borderWidth = 1.0
            cell.FirstSearchBut32.layer.borderColor = yourColor.cgColor
        }
//        if (i < 6){
//            i += 1
//        }
//        else{
//            i -= 1
//        }
        
//        cell.FirstSearchPic.layer.cornerRadius = 30 // (imageview?.frame.size.width ?? 0.0) / 2
        
        
            
//            .layer.cornerRadius = (imageview?.frame.size.width ?? 0.0) / 2
//        imageview?.clipsToBounds = true
//        avatarImageView.maskCircle(cell.FirstSearchPic)
        
        
            return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tableView.separatorColor = [UIColor clearColor]
        
//        view.backgroundColor = .blue
//        setup()
//        FirsSearchCell1
    }
//    let firstVC = FirstSearchViewController()
    let secondVC = SecondSearchViewController()
    private func setup() {
//        addChild(firstVC)
        addChild(secondVC)
//        self.view.addSubview(firstVC.view)
        self.view.addSubview(secondVC.view)
//        firstVC.didMove(toParent: self)
        secondVC.didMove(toParent: self)
//        firstVC.view.frame = self.view.bounds
        secondVC.view.frame = self.view.bounds
        secondVC.view.isHidden = true

        
        
    }

}
