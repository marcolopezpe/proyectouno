//
//  OpcionDosViewController.swift
//  proyectouno
//
//  Created by Marco López on 24/04/21.
//

import UIKit

class OpcionDosViewController: UIViewController {
    
    @IBOutlet weak var viewCuadrado: UIView!
    
    @IBAction func clickBtnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTop(_:)))
        viewCuadrado.addGestureRecognizer(tap)
    }
    
    @objc func handleTop(_ sender: UITapGestureRecognizer? = nil) {
        cambiarCentro()
    }
    
    func cambiarCentro() {
        let sizeSuperView = self.view?.frame.size ?? .zero
        
        let posx = CGFloat.random(in: 0...sizeSuperView.width)
        let posy = CGFloat.random(in: 0...sizeSuperView.height)
        
        let duracion = Double.random(in: (0.5)...(1.3))
        
        UIView.animate(withDuration: duracion, delay: 0, options: .curveEaseOut) {
            self.viewCuadrado.center = CGPoint(x: posx, y: posy)
            self.viewCuadrado.backgroundColor = self.crearColor()
        } completion: { (_) in
            print("finalizando animacion")
        }

    }
    
    func crearColor() -> UIColor {
        let r = CGFloat.random(in: 0...255) / 255
        let g = CGFloat.random(in: 0...255) / 255
        let b = CGFloat.random(in: 0...255) / 255
        return UIColor(displayP3Red: r, green: g, blue: b, alpha: 1)
    }
}
