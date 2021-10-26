import UIKit

var str = "Hello, playground"




//
//A única vez que deve-se desembrulhar opcionais é com @IBOutlets. Em qualquer outro caso é melhor usar não-opcional ou opcional regular. Sim, tem casos em que você provavelmente garante que a propriedade nunca será nil quando usada, porem é melhor ser seguro e consistente. Similarmente não force desembrulhar.
//
//Não use as! ou try! sempre que possível.
//
//Se você não planeja usar o valor armazenado dentro de um opcional, mas precisa determinar quando é ou não nil, cheque se o valor de fato é nil ao invés de usar a sintaxe if.

// Correto
if someOptional != nil {
    // do something
}

// Errado
if let _ = someOptional {
    // do something
}
//Não use unowned. Você pode pensar em unowned como equivalente da propriedade weak que é implicitamente desembrulhada. Como não queremos ocultar quando desembrulhamos algum objeto, não usamos unowned.
// Correto
weak var useViewController: UIViewController?

// Errado
weak var useViewController: UIViewController!
unowned var useViewController: UIViewController
// Quando desembrullhar opcionais, use o mesmo nome para a constante ou variável desembrulhada quando apropriado.
guard let useValue = useValue else { return }
