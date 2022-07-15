//
//  ViewController.swift
//  IMCReal
//
//  Created by ICMMAC04-3F86 on 15/07/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Qualsera: UIImageView!
    @IBOutlet weak var Peso: UITextField!
    @IBOutlet weak var Altura: UITextField!
    @IBOutlet weak var IMC: UILabel!
    
    var peso = 0.0
    var altura = 0.0
    var Resultado = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Calcular(_ sender: UIButton) {
        peso = Double(Peso.text!) ?? 0.0
        altura = Double(Altura.text!) ?? 0.0
        Resultado = floor((peso/(altura*altura))*100)/100
        IMC.text = "O IMC E \(Resultado)"
        if Resultado < 20 {
            Qualsera.image = UIImage(named: "palito")
        }
        else if (Resultado > 20 && Resultado < 30) {
            Qualsera.image = UIImage(named: "forte")
        }
        else{
            Qualsera.image = UIImage(named: "gordo")
        }
        view.endEditing(true)
    }
    
 
    

}

