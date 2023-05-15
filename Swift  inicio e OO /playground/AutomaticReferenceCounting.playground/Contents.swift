import UIKit

var str = "Hello, playground"



// MARK: Weak
//Um ciclo de retenção é quando dois objetos são retidos, ou mantidos, na memória porque ambos fazem referência um ao outro e impedem que um ao outro seja liberado.

class Pessoa {
 var telefone: Telefone?
 deinit { print("Pessoa está sendo desinicializada") }
}

//weak definir a referencia fraca
class Telefone {
 weak var proprietario: Pessoa?
 deinit { print("O telefone está sendo desinicializado") }
}

var pessoa1: Pessoa?
var telefone1: Telefone?
pessoa1 = Pessoa()
telefone1 = Telefone()

pessoa1?.telefone = telefone1
telefone1?.proprietario = pessoa1

pessoa1 = nil
telefone1  = nil


/* Os tipos de referência não podem ser removidos da memória quando a contagem de referência para o objeto é maior que zero .
 
 Todas essas soluções envolvem diminuir contagens de referência por:

 Usando fraco
 Usando sem dono
 Definindo tipos de referência para nulo **/



//Todos esses exemplos são extraídos de os docs .
/*O exemplo Person e Apartment mostra uma situação em que duas propriedades, ambas com permissão de nulo, têm o potencial de causar um ciclo de referência forte. Esse cenário é melhor resolvido com uma referência fraca. Ambas as entidades podem existir sem ter uma dependência estrita do outro. */

class Person {
    let name: String
    init(name: String) { self.name = name
        print("Pessoa está sendo desinicializada")
    }
    var apartment: Apartment?
}

class Apartment {
    let number: Int
    init(number: Int) { self.number = number
        print("Pessoa está Numero")
    }
     var tenant: Person?
    
}

var person2: Person?
var apartment1: Apartment?

person2 = Person(name: "cassio")
apartment1 = Apartment(number: 34)

person2?.apartment = apartment1
apartment1?.tenant = person2

person2 = nil
apartment1 = nil


// MARK: Unowned


class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) { self.name = name }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) { self.number = number; self.customer = customer }
}

var customer: Customer?
var creditCard: CreditCard

customer = Customer(name: "cassio")
//creditCard = CreditCard(number: <#UInt64#>, customer: <#Customer#>)

person2?.apartment = apartment1
apartment1?.tenant = person2

person2 = nil
apartment1 = nil





//MARK:  tipos de valor : struct, enum, e tuple.

    // 1 Crie uma Carestrutura com propriedades brande model.

    struct Car {
        let brand: String
        var model: String
    }

    // 2 Crie uma nova instância de Carnamed golf.

    var golf = Car(brand: "Volkswagen", model: "Golf")

    // 3 Crie uma cópia da golfinstância, chamada polo.
    let polo = golf

    // 4 Altere a golf.modelvariável paraGolf 2019

    golf.model = "Golf 2019"

    // 5 imptimindo
    print(golf)
    print(polo)




    // 1 Crie um Languageenum com italiane englishcasos.
    enum Language {
        case italian
        case english
    }

    // 2 Crie uma nova instância de Languagepara o italianidioma.

    var italian = Language.italian

    // 3 Crie uma cópia da italianinstância, chamada english.

    let english = italian

    // 4 Altere a italianinstância para english.
    italian = .english

    // 5 Imprima as duas instâncias diferentes. A primeira printinstrução é impressa englishe a segunda é impressa italian. Mesmo que englishseja uma cópia de italian, as instâncias permanecem independentes.    print(italian)

    print(english)



    // 1 Crie uma ironMantupla com as strings Tonye Stark.

    var ironMan = ("Tony", "Stark")

    // 2 Crie uma cópia da ironManinstância, chamada parent.
    let parent = ironMan

    // 3 Altere o ironMan.0índice para Alfred.
    ironMan.0 = "Alfred"

    // 4  Imprima as 2 instâncias diferentes. O primeiro printimprime ("Alfred", "Stark")e o segundo imprime ("Tony", "Stark"). Novamente, as instâncias permanecem independentes.

    print(ironMan)
    print(parent)


    /* Quando usar tipos de valor
    Use tipos de valor ao comparar dados de instância com ==faz sentido.
    ==verifica se todas as propriedades das duas instâncias são iguais.
    Com os tipos de valor, você sempre obtém uma instância única copiada e pode ter certeza de que nenhuma outra partedo seu aplicativo está alterando os dados nos bastidores. Isso é especialmente útil em ambientes multi-threaded onde um thread diferente pode alterar seus dados.
    Use um tipo de valor quando quiser que as cópias tenham um estado independente e os dados serão usados ​​no código em vários threads.

 Na Swift, Array, String, e Dictionarysão todos os tipos de valor.
 */


 

//MARK:  class, functionou closure.

/*Em Swift, as instâncias do tipo de referência compartilham uma única cópia de seus dados, de modo que cada nova instância apontará para o mesmo endereço na memória. Um exemplo típico é um**/



    func address<T: AnyObject>(of object: T) -> Int {
        return unsafeBitCast(object, to: Int.self)
    }
    /* Esta função imprime o endereço de um objeto, o que o ajudará a verificar se você está referenciando a mesma instância ou não.**/

    // 1 Crie um novo classnome Dog, que esteja em conformidade com CustomStringConvertiblea impressão das descrições personalizadas do objeto.

        class Dog: CustomStringConvertible {
        var age: Int
        var weight: Int

        // 2Defina a descrição personalizada do objeto.
            
        var description: String {
            return "Age \(age) - Weight \(weight)"
        }

        // 3Crie uma nova initfunção. Isso é necessário porque, ao contrário de a struct, a classnão cria automaticamente uma função de inicialização com base nas variáveis ​​do objeto.
            
        init(age: Int, weight: Int) {
            self.age = age
            self.weight = weight
        }
    }

    // 4 Crie uma dobermaninstância de Dog.

    let doberman = Dog(age: 1, weight: 70)

    // 5 Crie uma cópia de doberman, com nome chihuahua.

    let chihuahua = doberman

    // 6 Altere o doberman.agepara 2.

    doberman.age = 2

    // 7 Altere o chihuahua.weightpara 10.

    chihuahua.weight = 10

    // 8 Imprima a descrição das duas instâncias diferentes. O primeiro printimprime Age 2 - Weight 10e o segundo imprime o mesmo; Age 2 - Weight 10. Isso ocorre porque você está realmente referenciando o mesmo objeto.

    print(doberman)
    print(chihuahua)

    // 9 Imprima o endereço das duas instâncias diferentes. Com essas impressões, você terá a certeza de estar referenciando o mesmo endereço. Você verá que ambas as printinstruções imprimem o mesmo valor.

    print(address(of: doberman))
    print(address(of: chihuahua))



    //Funções e fechamentos

    /*A closureé usado para se referir a uma função junto com as variáveis ​​de seu escopo que ela encapsula. Funções são essencialmente fechamentos que armazenam referências a variáveis ​​em seu contexto.
 
    Dê uma olhada no código abaixo:*/

    let closure = { print("Test") }
    func function() -> (){ print("Test") }

    closure()
    function()



    /* A class, por outro lado, permite alterá-los porque você está referenciando o endereço de memória do objeto.
     
     Adicione o seguinte código:**/
    
    // 1 Crie um Bike struct.
    struct Bike {
        // 2 Crie um lete uma varpropriedade.
        let radius: Int
        var km: Float
    }

    // 3 Crie uma Bikeconstante. Mesmo se kmdentro de Bike structfor a var, você não pode editar isso porque bikeé a let.
    let bike = Bike(radius: 22, km: 34.5)

    /*Se você criar uma structconstante, não poderá alterar os valores de suas propriedades, embora os próprios valores possam ser variáveis.*/
    
    


    // 1 Crie um Motorbike class.
    class Motorbike {
        // 2 Crie radiuscomo lete kmcomo var.
        let radius: Int
        var km: Float

        init(radius: Int, km: Float) {
            self.radius = radius
            self.km = km
        }
    }

    // 3 Adicione 1 à motorbike.kmvariável.
    let motorbike = Motorbike(radius: 22, km: 34.5)
    motorbike.km += 1

    // 4 Imprima a motorbike.kmvariável.
    print(motorbike.km)


//Você pode definir a kmvariável porque Motorbikeé uma classe e estamos referenciando seu endereço de memória.
    



