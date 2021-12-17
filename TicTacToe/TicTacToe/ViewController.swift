//
//  ViewController.swift
//  TicTacToe
//
//  Created by Никита Черешнев on 03.12.2021.
//
//TODO: удалить из памяти кнопок инфу о старой коллекции
//TODO: понять как сделать нормально код
//TODO: придумать как сделать двумерную матрицу экземпляров класса cell
//TODO: придумать как связать клетку (2ную матрицу) с массивом кнопок (1мерная матрица)

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
                if var image = UIImage(named: getImageName(x: index/6, y: index%6)) {
                    buttonFieldArray[index].setImage(image, for: .normal)
                }
            }
        }
    }
    
    //функция, которая отвечает за нажатие кнопок на игровом поле №1
    @IBAction func buttonFirstFieldAction(_ sender: UIButton) {
        if flag <= 9 {
            if let buttonIndex = buttonFieldArray.firstIndex(of: sender) {
                if ticTacToeGame.newSymbol(x: buttonIndex/6, y: buttonIndex%6) != false {
                    updateViewFromModel(x: buttonIndex/6, y: buttonIndex%6)
                }
            }
            flag+=1
        }
    }
    
    //№2
    @IBAction func buttonSecondFieldAction(_ sender: UIButton) {
        if flag >= 10 || flag <= 17 {
            if let buttonIndex = buttonFieldArray.firstIndex(of: sender) {
                if ticTacToeGame.newSymbol(x: buttonIndex/6, y: buttonIndex%6) != false {
                    updateViewFromModel(x: buttonIndex/6, y: buttonIndex%6)
                }
            }
            flag+=1
        }
    }
    
    //№3
    @IBAction func buttonThirdFieldAction(_ sender: UIButton) {
        if flag >= 18 || flag <= 26 {
            if let buttonIndex = buttonFieldArray.firstIndex(of: sender) {
                if ticTacToeGame.newSymbol(x: buttonIndex/6, y: buttonIndex%6) != false {
                    updateViewFromModel(x: buttonIndex/6, y: buttonIndex%6)
                }
            }
            flag+=1
        }
    }
    
    //№4
    @IBAction func buttonFourthFieldAction(_ sender: UIButton) {
        if flag >= 27 || flag <= 35 {
            if let buttonIndex = buttonFieldArray.firstIndex(of: sender) {
                if ticTacToeGame.newSymbol(x: buttonIndex/6, y: buttonIndex%6) != false {
                    updateViewFromModel(x: buttonIndex/6, y: buttonIndex%6)
                }
            }
            flag+=1
        }
    }
}

