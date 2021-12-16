//
//  ViewController.swift
//  TicTacToe
//
//  Created by Никита Черешнев on 03.12.2021.
//
//TODO:удалить из памяти кнопок инфу о старой коллекции
import UIKit

class ViewController: UIViewController {
    
    var ticTacToeGame = TicTacToeGame() //экземпляр класса TicTacToeGame

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // просто массив кнопок для последующей обработки
    @IBOutlet var buttonFieldArray: [UIButton]!
    
    // лейбл счета игроков
    @IBOutlet weak var playersScore: UILabel!
    
//    private func updateViewFromModel() {
//        for index in .indices {
//            let button = buttonCollection[index]
//            let card = game.cards[index]
//            if card.isFacedUp {
//                button.setTitle(emojiIdentifier(for: card), for: .normal)
//                button.backgroundColor = UIColor.white
//            } else {
//                button.setTitle("", for: .normal)
//                //button.backgroundColor = UIColor.systemBlue
//                button.backgroundColor = card.isMatched ? UIColor.white : UIColor.systemBlue
//            }
//        }
//    }
    
    private func updateViewFromModel(var x: Int, var y: Int) {
        ticTacToeGame.newSymbol(x: x, y: y)
    }
    
    //функция, которая отвечает за нажатие кнопок на игровом поле №1
    @IBAction func buttonFirstFieldAction(_ sender: UIButton) {
        if let buttonIndex = buttonFieldArray.firstIndex(of: sender) {
            //buttonFieldArray[buttonIndex].backgroundColor? = UIColor.gray
            //buttonFieldArray[buttonIndex].setTitle("\((buttonIndex)/6),\((buttonIndex)%6)", for: .normal)
            //updateViewFromModel()
//            if var image = UIImage(named: "-1falsetruefalsefalse") {
//                buttonFieldArray[buttonIndex].setImage(image, for: .normal)
//            }
            updateViewFromModel(var: buttonIndex/6, var: buttonIndex%6)
        }
    }
    
    //№2
    @IBAction func buttonSecondFieldAction(_ sender: UIButton) {
        if let buttonIndex = buttonFieldArray.firstIndex(of: sender) {
            //buttonFieldArray[buttonIndex].backgroundColor? = UIColor.gray
            //buttonFieldArray[buttonIndex].setTitle("\((buttonIndex)/6),\((buttonIndex)%6)", for: .normal)
            //updateViewFromModel()
//            if var image = UIImage(named: "-1falsetruefalsetrue") {
//                buttonFieldArray[buttonIndex].setImage(image, for: .normal)
//            }
        }
    }
    
    //№3
    @IBAction func buttonThirdFieldAction(_ sender: UIButton) {
        if let buttonIndex = buttonFieldArray.firstIndex(of: sender) {
            //buttonFieldArray[buttonIndex].backgroundColor? = UIColor.gray
            //buttonFieldArray[buttonIndex].setTitle("\((buttonIndex)/6),\((buttonIndex)%6)", for: .normal)
            //updateViewFromModel()
//            if var image = UIImage(named: "-1falsetruetruefalse") {
//                buttonFieldArray[buttonIndex].setImage(image, for: .normal)
//            }
        }
    }
    
    //№4
    @IBAction func buttonFourthFieldAction(_ sender: UIButton) {
        if let buttonIndex = buttonFieldArray.firstIndex(of: sender) {
            //buttonFieldArray[buttonIndex].setTitle("\((buttonIndex)/6),\((buttonIndex)%6)", for: .normal)
//            if var image = UIImage(named: "-1falsetruetruetrue") {
//                buttonFieldArray[buttonIndex].setImage(image, for: .normal)
//            }
        }
    }
}

