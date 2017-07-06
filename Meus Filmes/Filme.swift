//
//  Filme.swift
//  Meus Filmes
//
//  Created by Bruno Koga on 05/07/17.
//  Copyright © 2017 Bruno Koga. All rights reserved.
//

import UIKit

class Filme {

    var titulo: String!

    var descricao: String!

    var imagem: UIImage!

    init(titulo: String, descricao: String, imagem: UIImage) {

        self.titulo    = titulo
        self.descricao = descricao
        self.imagem    = imagem
    }

}
