//
//  ViewController.swift
//  MInhas Anotações
//
//  Created by Bruno Koga on 10/07/17.
//  Copyright © 2017 Bruno Koga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var anotacaoTextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "fundo")!)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func salvaNotaActionButton(_ sender: Any) {
        print(anotacaoTextField)
//        UserDefaults.standard.set(anotacaoTextField, forKey: "anotacao")
    }


}

