//
//  OpcionUnoViewController.swift
//  proyectouno
//
//  Created by Marco López on 24/04/21.
//

import UIKit

class OpcionUnoViewController: UIViewController {
    
    @IBOutlet weak var viewCuadrado: UIView!
    
    @IBAction func clickBtnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        viewCuadrado.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        cambiarCentro()
    }
    
    func cambiarCentro() {
        let sizeSuperView = self.view?.frame.size ?? .zero
        
        let posx = CGFloat.random(in: 0...sizeSuperView.width)
        let posy = CGFloat.random(in: 0...sizeSuperView.height)
        
        let duracion = Double.random(in: (0.5)...(1.3))
        
        UIView.animate(withDuration: duracion, delay: 0, options: .curveEaseOut) {
            self.viewCuadrado.center = CGPoint(x: posx, y: posy)
        } completion: { (_) in
            print("finalizando animacion")
        }

    }
}
