
//MARK: - Subscripts
class Carro{
    var placa: String
    
    subscript(index: Int) ->String {
        get{
            let character = Array(placa)[index]
            return String(character)
        }set{
            var array = Array(placa)
            array[index] = Character(newValue)
            self.placa = String(array)
        }
    }
    
    init(placa: String) {
        self.placa = placa
    }
    
}
let carro = Carro(placa: "EXZ-9090")
carro[1] = "2"
print(carro.placa)
print(carro[7])





//MARK: - Generics

func swapValues<T> (_ a: inout T, _ b: inout T){
    let tempA = a
    a = b
    b = tempA
}

var a = "10"
var b = "20"

swapValues(&a, &b)

b
a
