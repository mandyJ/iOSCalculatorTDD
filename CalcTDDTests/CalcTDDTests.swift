import Quick
import Nimble
@testable import CalcTDD

class ControllerTest: QuickSpec {
    
    override func spec(){
        describe("Calculator ViewController") {
            
            context("touchDigit") {
                let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
                
                let viewController = mainStoryboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
                _ = viewController.view
                
                let numberOneButton = UIButton()
                numberOneButton.setTitle("1", for: .normal)
                
                let numberTwoButton = UIButton()
                numberTwoButton.setTitle("2", for: .normal)

                it("sends digits to display"){
                    viewController.touchDigit(numberOneButton)
                    expect(viewController.resultDisplay.text).to(equal("1"))
                }
                
                it("sends digits to display"){
                    viewController.touchDigit(numberTwoButton)
                    expect(viewController.resultDisplay.text).to(equal("12"))
                }
            }
        }
    }
    
}
