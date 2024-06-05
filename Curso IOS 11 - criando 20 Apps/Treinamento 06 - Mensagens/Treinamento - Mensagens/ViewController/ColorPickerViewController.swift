//
//  ColorPickerViewController.swift
//  Treinamento - Mensagens
//
//  Created by cassio on 03/06/24.
//

import UIKit

protocol ColorPickerDelegate: AnyObject {
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {
    
    @IBOutlet weak var viColor: UIView!
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    weak var Delegate: ColorPickerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func chooseColor(_ sender: UIButton) {
        if let color = viColor.backgroundColor {
            Delegate?.applyColor(color: color)
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    }
}
