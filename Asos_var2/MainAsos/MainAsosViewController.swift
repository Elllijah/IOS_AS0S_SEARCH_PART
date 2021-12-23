//
//  MainAsosViewController.swift
//  Asos_var2
//
//  Created by Илья on 19.12.2021.
//

import UIKit

//extension UISearchBar {
//    func setCenteredPlaceHolder(){
//        let textFieldInsideSearchBar = self.value(forKey: "searchField") as? UITextField
//
//        //get the sizes
//        let searchBarWidth = self.frame.width
//        let placeholderIconWidth = textFieldInsideSearchBar?.leftView?.frame.width
////        let placeHolderWidth = textFieldInsideSearchBar?.attributedPlaceholder?.size().width
//        let offsetIconToPlaceholder: CGFloat = 8
//        let placeHolderWithIcon = placeholderIconWidth! + offsetIconToPlaceholder
//
//        let offset = UIOffset(horizontal: ((searchBarWidth / 2) - (searchBarWidth / 2) - placeHolderWithIcon), vertical: 0)
//        self.setPositionAdjustment(offset, for: .search)
//
//
////        let searchController = UISearchController(searchResultsController: nil)
////        searchController.searchBar.frame = CGRect(x: 15, y: 100, width: 714, height: 100)
//
//}
//}


//!!!!!!
var ith = 0
let listCells3 = ["cell", "cell2"]

class MainAsosViewController: UIViewController, UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor.white
        let searchBar = UISearchBar()
        searchBar.showsCancelButton = false
        searchBar.setPositionAdjustment(UIOffset(horizontal: 140, vertical: 0), for: .search)
        searchBar.placeholder = "Поиск"
//        searchBar.isTranslucent = false
        self.navigationItem.titleView = searchBar
        
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listCells3.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: listCells3[0], for: indexPath) as! MainTableViewCell
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            
                return cell
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: listCells3[1], for: indexPath) as! MainTableViewCell
                cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
                // Set up cell.button
                return cell
            }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    return UIView()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
//        let searchController = UISearchController(searchResultsController: nil)
//        let searchBar = UISearchBar()
//        searchBar.showsCancelButton = false
//        searchBar.searchBarStyle = .prominent
//
//        let image = UIImageView(frame: view.frame)
//        image.image = UIImage(named: "camera")
//        searchBar.searchTextField.addSubview(image)
////        searchBar.setImage(image, for: <#T##UISearchBar.Icon#>, state: <#T##UIControl.State#>)
//        self.view.addSubview(image)
//
//
////        let image = UIImage(named: "camera")!
////        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 12, height: 12))
////        imageView.image = image
//
////        searchBar.searchTextField.rightView = imageView
//        searchBar.searchTextField.rightViewMode = .always
//        searchBar.searchTextField.leftView = nil
////        let camIm = UIImage(named: "camera")!
////        let imageView:UIImageView = UIImageView.init(image: camIm)
////        searchBar.setImage(camIm, for: .bookmark, state: .normal)
//        searchController.hidesNavigationBarDuringPresentation = false
////        let frame = CGRect(x: 0, y: 0, width: 100, height: 44)
//        searchBar.setPositionAdjustment(UIOffset(horizontal: 3, vertical: 0), for: .search)
//
////        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: camIm, style: UIBarButtonItem.Style, target: <#T##Any?#>, action: <#T##Selector?#>)
//        self.navigationItem.titleView = searchBar
//        navigationController?.setNavigationBarHidden(false, animated: animated)
//        let searchController = UISearchController(searchResultsController: nil)
        
//        searchController.searchBar.setCenteredPlaceHolder()
//        Переместить Текстфилд вправо на N пикселейы
//        searchController.searchBar.searchTextPositionAdjustment = UIOffset(horizontal: 10, vertical: 0)
//        self.tabBarController?.navigationItem.searchController?.hidesNavigationBarDuringPresentation = false
//        self.tabBarController?.navigationItem.titleView = searchController.searchBar
        
//        Код, который перемещает СерчБар на место заголовка. Однако пропадает клевая анимашка и переходы между страничками: https://riptutorial.com/ios/example/9505/search-bar-in-navigation-bar-title
    }


}
