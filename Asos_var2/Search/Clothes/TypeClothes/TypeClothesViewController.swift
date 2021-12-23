//
//  TypeClothesViewController.swift
//  Asos_var2
//
//  Created by Илья on 19.12.2021.
//

import UIKit

let listCellsTypeCloth = ["typeClothCell1","typeClothCell2","typeClothCell3",
                          "typeClothCell3","typeClothCell3","typeClothCell3",
                          "typeClothCell3","typeClothCell3","typeClothCell3"]

class TypeClothesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listCellsTypeCloth.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: listCellsTypeCloth[indexPath.row], for: indexPath) as! TypeClothesTableViewCell
        if (listCellsTypeCloth[indexPath.row] == "typeClothCell2" || listCellsTypeCloth[indexPath.row] == "typeClothCell3") {
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
        }
        return cell
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backButton = UIBarButtonItem()
        backButton.title = ""
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        // Do any additional setup after loading the view.
        self.title = "УЮТНЫЙ СЕЗОН"
        
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
