//
//  ViewController.swift
//  NavigationItem
//
//  Created by a1111 on 2020/07/01.
//  Copyright © 2020 sym. All rights reserved.
//

import UIKit

class ViewControllerA_1: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("ViewControllerA_1 - viewDidLoad\n")

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        print("ViewControllerA_1 - viewWillAppear\n")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        print("ViewControllerA_1 - viewDidAppear\n")

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        print("ViewControllerA_1 - viewWillDisappear\n")

    }
    override func viewDidDisappear(_ animated: Bool) {
        
        print("ViewControllerA_1 - viewDidDisappear\n")

    }


    @IBAction func btn(_ sender: Any) {
        
        print("--- ViewControllerA_2로 넘어감 ---\n")
        
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerA_2") as? ViewControllerA_2 else {return}
        
        
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(rvc, animated: true)
        }
        
    }
}

