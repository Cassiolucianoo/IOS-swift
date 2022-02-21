//
//  JogosTableViewCell.swift
//  Treinamento1.11 - Campeoes da Compa do Mundo
//
//  Created by cassio luciano on 17/02/22.
//

import UIKit

class JogosTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ivCasa: UIImageView!
    
    @IBOutlet weak var lbVistante: UILabel!
    @IBOutlet weak var lbCasa: UILabel!
    @IBOutlet weak var ivVisitante: UIImageView!
    
    @IBOutlet weak var lbPonto: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare (with game: Game) {
      ivCasa.image = UIImage(named: "\(game.home).png")
      ivVisitante.image = UIImage(named: "\(game.away).png")
     lbCasa.text = game.home
        lbVistante.text = game.away
     lbPonto.text = game.score
    }
    

}
