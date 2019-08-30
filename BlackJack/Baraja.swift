//
//  Baraja.swift
//  BlackJack
//
//  Created by comp07A on 29/08/19.
//  Copyright © 2019 comp20A. All rights reserved.
//

import Foundation
class Baraja{
    var cartas : [Carta] = [Carta]()//(repeating:Carta.init(),count:52)
    var i: Int=0
    var j: Int=0
    var k: Int=0
    
    init()//Constructor
    {
        for i in 0...3{
            for j in 0...12{
                cartas.append(Carta.init(palo: i, valor: j))//[k] = Carta.init(palo: i, valor: j)
                print(k , cartas[k].cardLabel)
                k+=1
            }
            
        }
       
    }
    func barajar(){
        cartas.shuffle()
        imprimir()
        
    }

    func sacarCarta() -> Carta{
     return cartas.removeLast()
    }
    
    func imprimir() {
        for i in 0...51{
            print(cartas[i].cardLabel)
        }
    }
    
}

