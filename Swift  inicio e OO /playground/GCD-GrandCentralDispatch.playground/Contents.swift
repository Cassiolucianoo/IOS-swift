import UIKit

//MARK : -  Dispatch Queue
let queue = DispatchQueue(label: "google.com.br")

// Síncrono é usado quando você deseja executar apenas uma tarefa de cada vez.
queue.sync {
    print("Sync task")
}

// Assíncrono significa que várias tarefas podem ser executadas de cada vez
queue.async {
    print("Async Task")
}

//MARK : - Programação Síncrona - queue.sync { ... }

let queue1 = DispatchQueue(label: "com.swiftpal.dispatch.synchronous")

// Task
queue1.sync {
    Thread.sleep(forTimeInterval: 3) // TEMPO DE 3 SEGUNDOS
    print("Task 1 Done")
}

print("Task 2 Done")

/* Output:
 Task 1 Done
 Task 2 Done
*/

//No exemplo acima, você pode ver que a Saída recebida está na ordem de código escrito, independentemente da fila.sync pedindo à nossa segunda instrução de impressão para aguardar dois segundos.
//A programação síncrona é amplamente utilizada quando você precisa executar uma tarefa na ordem em que escreveu, mantendo o desempenho da aplicação.
