//
//  TarefaUserDefaults.swift
//  Lista de Tarefa
//
//  Created by Bruno Koga on 10/07/17.
//  Copyright © 2017 Bruno Koga. All rights reserved.
//
import UIKit

class TarefaUserDefaults {

    let chaveListaTarefa = "listaTarefas"
    var arrayTarefas: [String] = []

    func salvarTarefa(tarefa: String) {
        arrayTarefas = listarTarefas()
        arrayTarefas.append(tarefa)

        UserDefaults.standard.set(arrayTarefas, forKey: chaveListaTarefa)
    }

    func listarTarefas() -> [String] {

        let listaTarefa = UserDefaults.standard.object(forKey: chaveListaTarefa)

        if  listaTarefa != nil {
            return listaTarefa as! [String]
        }

        return []

    }

    func removerTarefa(_ key: Int) -> Void {

        arrayTarefas = listarTarefas();
        arrayTarefas.remove(at: key)

        UserDefaults.standard.set(arrayTarefas, forKey: chaveListaTarefa)
    }
}
