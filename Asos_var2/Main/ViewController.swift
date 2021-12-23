//
//  ViewController.swift
//  Asos_var2
//
//  Created by Илья on 18.12.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "TabBar")
        self.navigationController?.pushViewController(vc, animated: false)
        
        // Do any additional setup after loading the view.
    }


}

