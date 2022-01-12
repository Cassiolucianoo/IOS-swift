//
//  PerguntasViewController.swift
//  Treinamento1.04 - App perguntas teoricas swift
//
//  Created by cassio luciano on 13/12/21.
//
import UIKit

class PerguntasViewController: UIViewController {
    
    @IBOutlet weak var viewTempo: UIView!
    @IBOutlet weak var lbPerguntas: UILabel!
    @IBOutlet var btRespostas: [UIButton]!
    
    let gerenciarPerguntas = GerenciarPerguntas()
    
    //Carrega uma View sempre que um metodo da UIViewController é inciado
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewTempo.frame.size.width = 0
    }
    
    //chamado sempre que uma tela vai ser inciada  metodo da UIViewController
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        viewTempo.frame.size.width = view.frame.size.width
        UIView.animate(withDuration: 05.0, delay: 0, options: .curveLinear,
                       animations: {
                        self.viewTempo.frame.size.width = 0
                       }) { (sucesso) in
            self.MostraResultado()
        }
        
        getNovaPergunta()
        
    }
    
    func getNovaPergunta() {
        gerenciarPerguntas.atualizaPergunta()
        lbPerguntas.text = gerenciarPerguntas.questao
        for i in 0..<gerenciarPerguntas.options.count {
            let opcao = gerenciarPerguntas.options[i]
            let botao = btRespostas[i]
            botao.setTitle(opcao, for: .normal)
        }
    }
    
    func MostraResultado(){
        performSegue(withIdentifier: "ResultadoSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultadoViewController = segue.destination as! ResultadoViewController
        resultadoViewController.totalCorretasRespostas = gerenciarPerguntas.totalCorretas
        resultadoViewController.totalRespostas = gerenciarPerguntas.totalRespostas
        
    }
    
    @IBAction func selecionarResposta(_ sender: UIButton) {
        let index = btRespostas.index(of: sender)!
        gerenciarPerguntas.validaResposta(index: index)
        getNovaPergunta()
    }
}
