//
//  FiltersViewController.swift
//  Asos_var2
//
//  Created by Илья on 19.12.2021.
//

import UIKit

let ListLabsFilters = ["Сезон", "Тип Продукта",
                       "Бренд", "Коллекция", "Крой",
                       "Размер", "Цвет", "Экологичная мода", "Цена"]
let ListCellsFilters = ["typeClothCell1","typeClothCell1","typeClothCell1",
                        "typeClothCell1","typeClothCell1","typeClothCell1",
                        "typeClothCell1","typeClothCell1","typeClothCell1"]

class FiltersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ListCellsFilters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ListCellsFilters[indexPath.row], for: indexPath) as! FiltersTableViewCell
        cell.FiltersLab.text = ListLabsFilters[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    return UIView()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor.white
        self.tabBarController?.tabBar.isHidden = true
        
        let backImage = UIImage(named: "close_but")!.withRenderingMode(.alwaysOriginal)
        self.navigationController?.navigationBar.backIndicatorImage = backImage
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = backImage
        
        let backButton = UIBarButtonItem()
        backButton.title = ""
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        self.title = "ФИЛЬТРЫ"
        
//        let lab = UILabel(frame: CGRect(x: 0, y: 0, width: 12, height: 12))
//        lab.text?.append("YES")
//        self.navigationController?.navigationItem.titleView = lab
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
        let backImage = UIImage(named: "back")!.withRenderingMode(.alwaysOriginal)
        self.navigationController?.navigationBar.backIndicatorImage = backImage
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = backImage
    }
//
//    override func viewDidAppear() {
//        super.viewDidAppear()
//        self.tabBarController?.tabBar.isHidden = false
//        // Do any additional setup after loading the view.
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
