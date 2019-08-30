//
//  Mano.swift
//  BlackJack
//
//  Created by comp07A on 29/08/19.
//  Copyright © 2019 comp20A. All rights reserved.
//

import Foundation
class Mano{
    var cartas = [Carta]()
    var valor : Int = 0
    init() {
        
    }
    init(carta : Carta) {
        agregarCarta(carta: carta)
    }
    
    func agregarCarta(carta: Carta){
        cartas.append(carta)
    }
    
    func reset(){
        cartas.removeAll()
    }
    
    func obtenerValor(A : Int) -> Int{//1 u 11
       valor=0
            if A==1{
                for i in 0...cartas.count-1{
                    valor+=cartas[i].valor
                }
            }
            else if A==11{
                 for i in 0...cartas.count-1{
                    if cartas[i].cardLabel.contains("A"){
                    valor+=11
                    }
                }
            }
        return valor
        
    }
}

