//
//  ViewController.swift
//  Meus Filmes
//
//  Created by Bruno Koga on 05/07/17.
//  Copyright © 2017 Bruno Koga. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        var filme: Filme
        filme = Filme(titulo: "007 - Spectre", descricao: "descricao 1", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append(filme)

        filme = Filme(titulo: "Star Wars", descricao: "descricao 2", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)

        filme = Filme(titulo: "Impacto Mortal", descricao: "descricao 3", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append(filme)

        filme = Filme(titulo: "Deadpool", descricao: "descricao 4", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append(filme)

        filme = Filme(titulo: "O Regresso", descricao: "descricao 5", imagem: #imageLiteral(resourceName: "filme5"))
        filmes.append(filme)

        filme = Filme(titulo: "A Herdeira", descricao: "descricao 6", imagem: #imageLiteral(resourceName: "filme6"))
        filmes.append(filme)

        filme = Filme(titulo: "Caçadores de emoção", descricao: "descricao 7", imagem: #imageLiteral(resourceName: "filme7"))
        filmes.append(filme)

        filme = Filme(titulo: "Regresso do Mal", descricao: "descricao 8", imagem: #imageLiteral(resourceName: "filme8"))
        filmes.append(filme)

        filme = Filme(titulo: "Tarzan", descricao: "descricao 9", imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append(filme)

        filme = Filme(titulo: "Hardcore", descricao: "descricao 10", imagem: #imageLiteral(resourceName: "filme10"))
        filmes.append(filme)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let filme: Filme = filmes[indexPath.row]
        let tableCellFilme = "cellFilme"
        let cell = tableView.dequeueReusableCell(withIdentifier: tableCellFilme, for: indexPath) as! FilmeCell

        cell.filmeImageView.image     = filme.imagem
        cell.tituloLabel.text    = filme.titulo
        cell.descricaoLabel.text = filme.descricao
        /**
         * Arredondamento feito pelo codigo
         *   cell.filmeImageView.layer.cornerRadius = 42
         *   cell.filmeImageView.clipsToBounds = true
         */

        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detalhesFilmesSegue" {
            if let indexPath = tableView.indexPathForSelectedRow  {

                let filmeSelecionado: Filme = self.filmes[indexPath.row]

                let viewControllerDestiny = segue.destination as! DetalheViewController

                viewControllerDestiny.filme = filmeSelecionado

            }
        }
    }

}

