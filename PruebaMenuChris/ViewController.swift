//
//  ViewController.swift
//  PruebaMenuChris
//
//  Created by Desarrollo on 28/05/18.
//  Copyright © 2018 APEAM AC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuButton.target = SWRevealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }
    
    @IBAction func CambioStoryBoard(_ sender: Any) { //FUNCIONA DE NO MAMESSSSSS!!!!!!!
         //var controller: UIViewController?
       let controller = self.storyboard?.instantiateViewController(withIdentifier: "Opcion1ViewController")
        if (controller != nil) {
            controller!.title = "Pantalla 2"
            let navController = UINavigationController(rootViewController: controller!)
            revealViewController().pushFrontViewController(navController, animated:true)
        }
        
        
    }
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    @IBAction func Secondstoryboard(_ sender: Any) { //FUNCIONA DE NO MAMESSSSSS!!!!!!!
       
       let storyboard = UIStoryboard(name: "StoryboardSecond", bundle: nil).instantiateViewController(withIdentifier: "SegundoVCStoryboard2") as UIViewController
        revealViewController().pushFrontViewController(storyboard, animated:true)
    }
    
}

