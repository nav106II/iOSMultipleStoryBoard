//
//  Opcion1ViewController.swift
//  PruebaMenuChris
//
//  Created by Desarrollo on 28/05/18.
//  Copyright © 2018 APEAM AC. All rights reserved.
//

import UIKit

class Opcion1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuButton.target = SWRevealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    @IBAction func Cambiapantalla1(_ sender: Any) { //FUNCIONA DE NO MAMESSSSSS!!!!!!!
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "ViewController")
        if (controller != nil) {
            controller!.title = "Pantalla 1"
            let navController = UINavigationController(rootViewController: controller!)
            revealViewController().pushFrontViewController(navController, animated:true)
        }
    }
    
    
}
