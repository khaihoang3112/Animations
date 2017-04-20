//
//  ViewController.swift
//  Animations
//
//  Created by KhaiHoang on 4/20/17.
//  Copyright © 2017 KhaiHoang. All rights reserved.
//

import UIKit
import TabPageViewController

class ContainerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setUpTabPageControllers()
    }
    
    func setUpTabPageControllers() {
        let tc = TabPageViewController.create()
        let vc1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProjectsViewController")
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PrototypesViewController")
        let vc3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FilesViewController")
        let vc4 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PhotosViewController")
        let vc5 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RecentlyViewController")
        tc.tabItems = [(vc1, "Projects"), (vc2, "Prototypes"), (vc3, "Files"), (vc4, "Photos"), (vc5, "Recently")]
        var option = TabPageOption()
        option.tabWidth = view.frame.width / CGFloat(tc.tabItems.count)
        option.hidesTopViewOnSwipeType = .all
        tc.option = option
        navigationController?.pushViewController(tc, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

