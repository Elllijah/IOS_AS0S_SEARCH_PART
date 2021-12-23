//
//  SearchViewController.swift
//  Asos_var2
//
//  Created by Илья on 19.12.2021.
//

import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor.white
        let searchBar = UISearchBar()
        searchBar.showsCancelButton = false
        searchBar.setPositionAdjustment(UIOffset(horizontal: 140, vertical: 0), for: .search)
        searchBar.placeholder = "Поиск"
//        searchBar.isTranslucent = false
        self.navigationItem.titleView = searchBar
        
        let backImage = UIImage(named: "back")!.withRenderingMode(.alwaysOriginal)
        self.navigationItem.title = ""
        self.navigationController?.navigationBar.backIndicatorImage = backImage
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = backImage
        FirstSearchView.alpha = 1
        SecondSearchView.alpha = 0
//        segmentedControl.selectedSegmentTintColor = UIColor.blue
        mysegmentedControl.tintColor = UIColor.white
        mysegmentedControl.backgroundColor = UIColor.white
        mysegmentedControl.selectedSegmentTintColor = UIColor.white
        mysegmentedControl.layer.cornerRadius = 0
        
        
//
//        let segmentedControl = UISegmentedControl()
//        let background = UIColor.white
//        let selectedColor = UIColor.white
//
//        if #available(iOS 13.0, *)
//        {
//            segmentedControl.tintColor = background
//            segmentedControl.backgroundColor = background
//            segmentedControl.selectedSegmentTintColor = selectedColor
//            segmentedControl.setTitleTextAttributes([.foregroundColor: selectedColor as Any], for: .normal)
//            segmentedControl.setTitleTextAttributes([.foregroundColor: background as Any], for: .selected)
//        }
//        else
//        {
//            segmentedControl.tintColor = background
//            segmentedControl.backgroundColor = selectedColor
//            segmentedControl.layer.cornerRadius = 4
//        }
        
        
//        setup()
    }
    
    @IBOutlet weak var mysegmentedControl: UISegmentedControl!
    @IBOutlet weak var FirstSearchView: UIView!
    @IBOutlet weak var SecondSearchView: UIView!
    
    @IBAction func segControl(_ sender: UISegmentedControl) {
        FirstSearchView.alpha = 1
        if sender.selectedSegmentIndex == 0 {
//            firstVC.view.isHidden = true
            FirstSearchView.alpha = 1
            SecondSearchView.alpha = 0
            
        }
        else {
            FirstSearchView.alpha = 0
            SecondSearchView.alpha = 1
//            secondVC.view.isHidden = false
        }
    }
    
    
//    let firstVC = FirstSearchViewController()
//    let secondVC = SecondSearchViewController()
//
//    private func setup() {
//
//        addChild(firstVC)
//        addChild(secondVC)
//
//        self.view.addSubview(firstVC.view)
//        self.view.addSubview(secondVC.view)
//
//        firstVC.didMove(toParent: self)
//        secondVC.didMove(toParent: self)
//
//        firstVC.view.frame = self.view.bounds
//        secondVC.view.frame = self.view.bounds
//        secondVC.view.isHidden = true
//    }

}
