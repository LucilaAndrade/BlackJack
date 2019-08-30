
import Foundation

class Carta{
  private  var palos :  [String] = ["corazones", "diamantes", "picas", "treboles"]//["♥","♦","♤","♣"]
    var valores :[Int]=[1,2,3,4,5,6,7,8,9,10,10,10,10]
    
    var palo : String = ""//corazones, diamantes, picas, treboles
    var valor: Int = 0//1-13
    var cardLabel: String=""//A-Corazones A♥♦♣♠
  //  var empty : Bool = true
    
    init()
    {
    }
    
/*init(palo: String, valor: Int)//Constructor
    {
        self.palo = palo//this.palo
        self.valor = valor//this.valor
       cardLabel = String(valor)+"-"+String(palo)
    }
    */
    init(palo: Int, valor: Int)//Constructor
    {
        self.palo = palos[palo]//this.palo
        self.valor = valores[valor]//this.valor
        
        switch valor {
        case 1:
            cardLabel = "A-"+String(self.palo)
        case 11:
            cardLabel = "J-"+String(self.palo)
        case 12:
            cardLabel = "Q-"+String(self.palo)
        case 13:
            cardLabel = "K-"+String(self.palo)
        default:
            cardLabel = String(self.valor)+"-"+String(self.palo)
        }
    }
    
}
