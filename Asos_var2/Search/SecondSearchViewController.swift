//
//  SecondSearchViewController.swift
//  Asos_var2
//
//  Created by Илья on 20.12.2021.
//


import UIKit

let listCells2 = ["SecSearchCell1", "SecSearchCell2",
                  "SecSearchCell2", "SecSearchCell2",
                  "SecSearchCell2", "SecSearchCell2",
                  "SecSearchCell2", "SecSearchCell3",
                  "SecSearchCell4"]

class SecondSearchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: listCells2[indexPath.row], for: indexPath) as! SecondSearchTableViewCell
        cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
        
        if (indexPath.row == 8){
            cell.SecSearchBut31.layer.borderWidth = 1.0
            let yourColor : UIColor = UIColor( red: 0.75, green: 0.75, blue: 0.75, alpha: 1)
            cell.SecSearchBut31.layer.borderColor = yourColor.cgColor
            
            cell.SecSearchBut32.layer.borderWidth = 1.0
            cell.SecSearchBut32.layer.borderColor = yourColor.cgColor
        }
            return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .red
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
