import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultDisplay: UILabel!
    
//    let calculatorBrain = CalculatorBrain()
    var isInTheMiddleOfTyping = false;
    
    
    @IBAction func touchDigit(_ sender: UIButton) {
        
        if isInTheMiddleOfTyping {
            resultDisplay.text = resultDisplay.text! + sender.currentTitle!
        } else {
            resultDisplay.text = sender.currentTitle!
            isInTheMiddleOfTyping = true
        }
        
    }
    
    
//    @IBAction func performOperation(_ sender: UIButton) {
//        calculatorBrain.add
//    }
}


