import UIKit

class ViewController: UIViewController {
    
    var ticTacToeGame = TicTacToeGame() //экземпляр класса TicTacToeGame
    var flag: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // просто массив кнопок для последующей обработки
    @IBOutlet var buttonFieldArray: [UIButton]!
    
    // лейбл счета игроков
    @IBOutlet weak var playersScore: UILabel!
    
    private func getImageName(x: Int, y: Int) -> String {
        return "\(String(ticTacToeGame.field.cells[x][y].symbol))\(String(ticTacToeGame.field.cells[x][y].vertical))\(String(ticTacToeGame.field.cells[x][y].horizontal))\(String(ticTacToeGame.field.cells[x][y].mainDiagonal))\(String(ticTacToeGame.field.cells[x][y].sideDiagonal))"
    }
    
    private func updateViewFromModel(x: Int, y: Int) {
        for index in 0...35 {
            if ticTacToeGame.field.cells[index/6][index%6].symbol == 1 || ticTacToeGame.field.cells[index/6][index%6].symbol == -1 {
                if let image = UIImage(named: getImageName(x: index/6, y: index%6)) {
                    buttonFieldArray[index].setImage(image, for: .normal)
                }
            }
        }
        playersScore.text = "\(ticTacToeGame.field.scoreX) : \(ticTacToeGame.field.scoreO)"
    }
    
    private func checkButton(x: Int, y: Int)->Bool {
        if ticTacToeGame.field.cells[x][y].symbol == 0 {
            return false
        } else {
            return true
        }
    }
    
    @IBAction func buttonFirstFieldAction(_ sender: UIButton) {
        if let buttonIndex = buttonFieldArray.firstIndex(of: sender) {
            if flag < 10 && !checkButton(x: buttonIndex/6, y: buttonIndex%6) {
                if ticTacToeGame.newSymbol(x: buttonIndex/6, y: buttonIndex%6) != false {
                    updateViewFromModel(x: buttonIndex/6, y: buttonIndex%6)
                }
                flag+=1
            }
        }
    }
    
    //№2
    @IBAction func buttonSecondFieldAction(_ sender: UIButton) {
        if let buttonIndex = buttonFieldArray.firstIndex(of: sender) {
            if flag >= 9 && flag <= 17 && !checkButton(x: buttonIndex/6, y: buttonIndex%6) {
                if ticTacToeGame.newSymbol(x: buttonIndex/6, y: buttonIndex%6) != false {
                    updateViewFromModel(x: buttonIndex/6, y: buttonIndex%6)
                }
                flag+=1
            }
        }
    }
    
    //№3
    @IBAction func buttonThirdFieldAction(_ sender: UIButton) {
        if let buttonIndex = buttonFieldArray.firstIndex(of: sender) {
            if flag >= 18 && flag <= 27 && !checkButton(x: buttonIndex/6, y: buttonIndex%6) {
                if ticTacToeGame.newSymbol(x: buttonIndex/6, y: buttonIndex%6) != false {
                    updateViewFromModel(x: buttonIndex/6, y: buttonIndex%6)
                }
                flag+=1
            }
        }
    }
    
    //№4
    @IBAction func buttonFourthFieldAction(_ sender: UIButton) {
        if let buttonIndex = buttonFieldArray.firstIndex(of: sender) {
            if flag >= 27 && flag <= 36 && !checkButton(x: buttonIndex/6, y: buttonIndex%6) {
                if ticTacToeGame.newSymbol(x: buttonIndex/6, y: buttonIndex%6) != false {
                    updateViewFromModel(x: buttonIndex/6, y: buttonIndex%6)
                }
                flag+=1
            }
        }
    }
}

