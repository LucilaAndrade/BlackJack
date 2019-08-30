//
//  Jugador.swift
//  BlackJack
//
//  Created by comp07A on 29/08/19.
//  Copyright © 2019 comp20A. All rights reserved.
//

import Foundation
class Jugador{
    var cartas: Mano
    var fichas: Int
    
    init() {
       fichas=1000
        cartas=Mano.init()
    }
    
    init(carta: Carta, fichas : Int) {
        cartas=Mano.init(carta: carta)
        self.fichas=fichas
    }
    

}
