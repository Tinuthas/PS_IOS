//
//  ShowResultViewController.swift
//  PSTDSG
//
//  Created by Usuário Convidado on 09/08/19.
//  Copyright © 2019 vinicius. All rights reserved.
//

import UIKit

class ShowResultViewController: UIViewController {
    
    var resultado:Double!

    @IBOutlet weak var lbResultado: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbResultado.text = "\(resultado!)"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func voltarMain(_ sender: Any) {
       performSegue(withIdentifier: "showResult", sender: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
