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
        
        print("ViewControllerA_1 - viewDidLoad\n")
        
        print("1.self.navigationItem:\n", self.navigationItem)
        print("\n2.self.navigationController?.navigationItem\n", (self.navigationController?.navigationItem)!)
        print("\n3.self.navigationController?.navigationBar.topItem\n", (self.navigationController?.navigationBar.topItem)!, "\n\n")

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        print("ViewControllerA_1 - viewWillAppear\n")
        
       print("1.self.navigationItem:\n", self.navigationItem)
       print("\n2.self.navigationController?.navigationItem\n", (self.navigationController?.navigationItem)!)
       print("\n3.self.navigationController?.navigationBar.topItem\n", (self.navigationController?.navigationBar.topItem)!, "\n\n")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        print("ViewControllerA_1 - viewDidAppear\n")
        
        print("1.self.navigationItem:\n", self.navigationItem)
        print("\n2.self.navigationController?.navigationItem\n", (self.navigationController?.navigationItem)!)
        print("\n3.self.navigationController?.navigationBar.topItem\n", (self.navigationController?.navigationBar.topItem)!, "\n\n")
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        print("ViewControllerA_1 - viewWillDisappear\n")
        
        print("1.self.navigationItem:\n", self.navigationItem)
        print("\n2.self.navigationController?.navigationItem\n", (self.navigationController?.navigationItem)!)
        print("\n3.self.navigationController?.navigationBar.topItem\n", (self.navigationController?.navigationBar.topItem)!, "\n\n")

        
    }
    override func viewDidDisappear(_ animated: Bool) {
        
        print("ViewControllerA_1 - viewDidDisappear\n")
        
        print("1.self.navigationItem:\n", self.navigationItem)
        print("\n2.self.navigationController?.navigationItem\n", (self.navigationController?.navigationItem)!)
        print("\n3.self.navigationController?.navigationBar.topItem\n", (self.navigationController?.navigationBar.topItem)!, "\n\n")

    }


    @IBAction func btn(_ sender: Any) {
        
        print("--- ViewControllerA_2로 넘어감 ---\n")
        
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerA_2") as? ViewControllerA_2 else { return }
        
        
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(rvc, animated: true)
        }
        
    }
}

