//
//  ViewController.swift
//  MediaNota
//
//  Created by ICMMAC04-3F86 on 13/07/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Nota1: UITextField!
    @IBOutlet weak var Nota2: UITextField!
    @IBOutlet weak var Nota3: UITextField!
    @IBOutlet weak var Resultado: UILabel!
    @IBOutlet weak var Verificacao: UILabel!
    var nota1 = 0.0
    var nota2 = 0.0
    var nota3 = 0.0
    var media = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Btn(_ sender: Any) {
        nota1 = Double(Nota1.text!) ?? 0.0
        nota2 = Double(Nota2.text!) ?? 0.0
        nota3 = Double(Nota3.text!) ?? 0.0
        media = floor(((nota1 + nota2 + nota3)/3)*100)/100
        Resultado.text = "A media e \(media)"
        if media < 6 {
            Verificacao.text = "Aluno Reprovado"
            Verificacao.textColor = .red
        
        }
        else{
            Verificacao.text = "Aluno Aprovado"
            Verificacao.textColor = .green
        }
        view.endEditing(true)
        
    }
    
}

