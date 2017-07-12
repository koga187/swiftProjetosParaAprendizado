//
//  ViewController.swift
//  Lista de Tarefa
//
//  Created by Bruno Koga on 10/07/17.
//  Copyright © 2017 Bruno Koga. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var listaTarefa: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        popTabelaTarefa()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaTarefa.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let celulaReuso = "celulaTarefa"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = listaTarefa[indexPath.row]

        return celula
    }

    override func tableView(_ : UITableView, didSelectRowAt indexPath: IndexPath) {

    }

    func popTabelaTarefa() -> Void {
        let tarefaUserDefaults = TarefaUserDefaults()
        listaTarefa = tarefaUserDefaults.listarTarefas()
    }
}
