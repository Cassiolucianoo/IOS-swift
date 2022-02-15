//
//  CopaMundoTableViewCell.swift
//  Treinamento1.11 - Campeoes da Compa do Mundo
//
//  Created by cassio luciano on 15/02/22.
//

import UIKit

class CopaMundoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbAno: UILabel!
    @IBOutlet weak var lbPais: UILabel!
    @IBOutlet weak var ivVencedor: UIImageView!
    @IBOutlet weak var lbVencedor: UILabel!
    @IBOutlet weak var imVice: UIImageView!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var lbVecedorPonto: UILabel!
    @IBOutlet weak var lbVicePonto: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(with copa: CopaMundo){
        lbAno.text = "\(copa.year)"
        lbPais.text = "\(copa.country)"
        lbVice.text = "\(copa.vice)"
        lbVicePonto.text = "\(copa.viceScore)"
        lbVencedor.text = "\(copa.winner)"
        lbVecedorPonto.text = "\(copa.winnerScore)"
        ivVencedor.image = UIImage(named: copa.winner)
        imVice.image = UIImage(named: copa.vice)
    }

}
