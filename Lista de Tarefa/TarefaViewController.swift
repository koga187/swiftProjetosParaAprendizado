//
//  TarefaViewController.swift
//  Lista de Tarefa
//
//  Created by Bruno Koga on 10/07/17.
//  Copyright © 2017 Bruno Koga. All rights reserved.
//

import UIKit

class TarefaViewController: UIViewController {

    @IBOutlet weak var tarefaTextField: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func adicionarActionButton(_ sender: Any) {

        if let tarefa = tarefaTextField.text {
            let tarefaUserDefaults = TarefaUserDefaults()
            tarefaUserDefaults.salvarTarefa(tarefa: tarefa)

            let alertaController = UIAlertController(title: "Tarefa", message: "Tarefa adicionada com sucesso!", preferredStyle: .actionSheet)
            let acaoConfirmar = UIAlertAction(title: "ok", style: .default	, handler: nil)

            alertaController.addAction(acaoConfirmar)
            present(alertaController, animated: true, completion: nil)
        }

        tarefaTextField.text = ""
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true )
    }
}
