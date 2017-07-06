//
//  DetalheViewController.swift
//  Meus Filmes
//
//  Created by Bruno Koga on 06/07/17.
//  Copyright © 2017 Bruno Koga. All rights reserved.
//

import UIKit

class DetalheViewController: UIViewController {

    var filme: Filme!

    @IBOutlet weak var detalhesFilmesImageView: UIImageView!

    @IBOutlet weak var detalhesFilmesTitulo: UILabel!

    @IBOutlet weak var detalhesDescricao: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        detalhesFilmesImageView.image = filme.imagem
        detalhesFilmesTitulo.text     = filme.titulo
        detalhesDescricao.text        = filme.descricao
    }
    
}
