


import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lbAnswer: UILabel!
    
    var check = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func btClicar(_ sender: Any) {
        if check {
            lbAnswer.text = "Igor Rafael da Silva"
        } else {
            lbAnswer.text = "What is your name?"
        }
        check = !check
    }
}

