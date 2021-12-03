//
//  ViewController.swift
//  TicTacToe
//
//  Created by Никита Черешнев on 03.12.2021.
//

import UIKit
ы
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // просто коллекция кнопок для последующей обработки
    @IBOutlet var buttonFieldCollection: [UIButton]!
    
    // лейбл счета игроков
    @IBOutlet weak var playersScore: UILabel!
    
    //функция, которая отвечает за нажатие кнопок на игровом поле №1
    @IBAction func buttonFirstFieldAction(_ sender: UIButton) {
        
    }
    
    //№2
    @IBAction func buttonSecondFieldAction(_ sender: UIButton) {
        
    }
    
    //№3
    @IBAction func buttonThirdFieldAction(_ sender: UIButton) {
        
    }
    
    //№4
    @IBAction func buttonFourthFieldAction(_ sender: UIButton) {
        
    }
}

