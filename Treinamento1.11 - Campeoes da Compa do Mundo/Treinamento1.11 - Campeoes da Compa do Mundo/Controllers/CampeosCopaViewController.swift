//
//  CampeosCopaViewController.swift
//  Treinamento1.11 - Campeoes da Compa do Mundo
//
//  Created by cassio luciano on 10/02/22.
//

import UIKit

class CampeosCopaViewController: UIViewController {
    
    
    var copaMundo: CopaMundo!
    @IBOutlet weak var ivVencedor: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var lbPontos: UILabel!
    @IBOutlet weak var lbVencedor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Copa Do Mundo \(copaMundo.year)"
        
        ivVencedor.image = UIImage(named: "\(copaMundo.winner).png")
        ivVice.image = UIImage(named: "\(copaMundo.vice).png")
        
        lbVice.text = copaMundo.vice
        
        lbVencedor.text = copaMundo.winner
        
        lbPontos.text = "\(copaMundo.winnerScore) x \(copaMundo.viceScore)"

        // Do any additional setup after loading the view.
    }
    


}
