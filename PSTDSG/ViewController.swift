//
//  ViewController.swift
//  PSTDSG
//
//  Created by Usuário Convidado on 09/08/19.
//  Copyright © 2019 vinicius. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtConsumo: UITextField!
    
    @IBOutlet weak var txtDistancia: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateConbustivel(_ sender: Any) {
        performSegue(withIdentifier: "showResult", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier {
        case "showResult":
            let distancia = Double(txtDistancia.text!)
            let consumo = Double(txtConsumo.text!)
            let resultado = Double(distancia!/consumo!)
            (segue.destination as! ShowResultViewController).resultado = resultado
            break
        default:
            return
        }
        
    }
    
}

