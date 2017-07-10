//
//  ViewController.swift
//  MInhas Anotações
//
//  Created by Bruno Koga on 10/07/17.
//  Copyright © 2017 Bruno Koga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var anotacaoTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "fundo")!)

        anotacaoTextView.text = buscaAnotacoes()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func salvaNotaActionButton(_ sender: Any) {
        print(anotacaoTextView.text)
        UserDefaults.standard.set(anotacaoTextView.text, forKey: "anotacao")
    }

    func buscaAnotacoes() -> String {

        let anotacoes = UserDefaults.standard.object(forKey: "anotacao")
        print(anotacoes!);
        if anotacoes != nil {
            return String(describing: anotacoes!)
        }

        return ""
    }


}

