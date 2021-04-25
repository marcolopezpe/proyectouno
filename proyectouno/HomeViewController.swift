//
//  HomeViewController.swift
//  proyectouno
//
//  Created by Marco López on 24/04/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    var isVerMas = false
    
    @IBOutlet weak var btnVer: UIButton!
    @IBOutlet weak var ctnLabelAlto: NSLayoutConstraint!
    
    @IBAction func clickBtnVer(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.isVerMas = !self.isVerMas
            self.ctnLabelAlto.constant = self.isVerMas ? 250 : 50
            self.btnVer.setTitle(self.isVerMas ? "Ver Menos" : "Ver Más", for: .normal)
        } completion: { (Bool) in
            print("Termino de animar")
        }
    }
}
