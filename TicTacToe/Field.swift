import Foundation

struct Field {
    //двумерный массив для хранения класса клетка
    var cells = [[Cell]]()
    var symbol: Int = 1 //счетчик очередности хода
    var scoreX: Int = 0  //счетчики для хранения очков игроков Х и О
    var scoreO: Int = 0
    var counter: Int = 0 //счетчик нажатой клетки
}
