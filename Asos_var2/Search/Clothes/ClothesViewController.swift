//
//  ClothesViewController.swift
//  Asos_var2
//
//  Created by Илья on 19.12.2021.
//

import UIKit

let ListCellsCloth = ["clothCell1", "clothCell2", "clothCell3",
                      "clothCell3", "clothCell3", "clothCell3",
                      "clothCell3", "clothCell3", "clothCell3",
                      "clothCell3", "clothCell3", "clothCell3",
                      "clothCell3"]

class ClothesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ListCellsCloth.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ListCellsCloth[indexPath.row], for: indexPath) as! ClothesTableViewCell
        if (ListCellsCloth[indexPath.row] == "clothCell1" || ListCellsCloth[indexPath.row] == "clothCell2") {
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
        }
        
        if (ListCellsCloth[indexPath.row] == "clothCell3") {
            cell.ClothIm3.layer.cornerRadius = (cell.ClothIm3.frame.size.width) / 2
//            cell.FirstSearchPic.layer.cornerRadius = 30 // (imageview?.frame.size.width ?? 0.0) / 2
        }
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let backButton = UIBarButtonItem()
        backButton.title = ""
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        self.title = "ОДЕЖДА"
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
