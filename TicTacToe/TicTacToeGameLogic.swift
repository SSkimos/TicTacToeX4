import Foundation

class TicTacToeGame {
    var field = Field() //экземпляр класса Field
    
    func newSymbol(x: Int, y: Int) -> Bool {
        if field.cells[x][y].symbol != 0 { return false }
        field.cells[x][y].symbol = field.symbol
        
        //проверка по горизонтали
        var r: Int = 0
        var x1: Int = x - 2
        if x1 < 0 { x1 = 0 }
        for i in x1...x+2 where i < 6 {
            if field.cells[i][y].symbol == field.symbol && !field.cells[i][y].horizontal {
                r += 1
            } else {
                if r < 3 {
                    r = 0
                } else {
                    for j in i-r...i-1 { field.cells[j][y].horizontal = true }
                    if field.symbol == 1 { field.scoreX += (r - 2)} else { field.scoreO += (r - 2)}
                    break
                }
            }
        }
        
        //проверка по вертикали
        r = 0
        var y1: Int = y - 2
        if y1 < 0 { y1 = 0 }
        for i in y1...y+2 where i < 6 {
            if field.cells[x][i].symbol == field.symbol && !field.cells[x][i].vertical {
                r += 1
            } else {
                if r < 3 {
                    r = 0
                } else {
                    for j in i-r...i-1 { field.cells[x][j].vertical = true }
                    if field.symbol == 1 { field.scoreX += (r - 2)} else { field.scoreO += (r - 2)}
                    break
                }
            }
        }
        
        //проверка по главной диагонали
        r = 0
        x1 = x
        y1 = y
        
        while x1 != 0 && y1 != 0 && x1 != x-2 {
            x1-=1
            y1-=1
        }
        
        for i in 0...5 where x1 < 6 && y1 < 6 {
            if field.cells[x1][y1].symbol == field.symbol && !field.cells[x1][y1].mainDiagonal {
                r+=1
            } else {
                if r < 3 {
                    r = 0
                } else {
                    for j in i-r...i-1 { field.cells[x1-j-1][y1-j-1].mainDiagonal = true }
                    if field.symbol == 1 { field.scoreX += (r - 2)} else { field.scoreO += (r - 2)}
                    break
                }
            }
            x1+=1
            y1+=1
        }
        
        
        //проверка побочной диагонали
        r = 0
        x1 = x
        y1 = y
        while x1 != 0 && y1 != 5 && x1 != x - 2 {
            x1-=1
            y1+=1
        }
        
        for i in 0...5 where x1 < 6 && y1 > -1 {
            if field.cells[x1][y1].symbol == field.symbol && !field.cells[x1][y1].sideDiagonal {
                r+=1
            } else {
                if r < 3 {
                    r = 0
                } else {
                    for j in i-r...i-1 { field.cells[x1-1-j][y1+1+j].sideDiagonal = true}
                    if field.symbol == 1 { field.scoreX += (r - 2)} else { field.scoreO += (r - 2)}
                    break
                }
            }
            x1+=1
            y1-=1
        }
        
        field.symbol *= -1
        field.counter += 1
        return true
    }
}
