//
//  ViewControllerAI.swift
//  FinalProjectSwift
//
//  Created by Yevhenii Kril on 03.08.2020.
//  Copyright © 2020 Kirill Barsukov. All rights reserved.
//


import UIKit

class ViewControllerAI: UIViewController {
    
    // Outlets
    @IBOutlet weak var cell0: UIButton!
    @IBOutlet weak var cell1: UIButton!
    @IBOutlet weak var cell2: UIButton!
    @IBOutlet weak var cell3: UIButton!
    @IBOutlet weak var cell4: UIButton!
    @IBOutlet weak var cell5: UIButton!
    @IBOutlet weak var cell6: UIButton!
    @IBOutlet weak var cell7: UIButton!
    @IBOutlet weak var cell8: UIButton!
    @IBOutlet weak var player1Name: UILabel!
    @IBOutlet weak var player2Name: UILabel!
    @IBOutlet weak var playerNamesView: UIStackView!
    @IBOutlet weak var winnerView: UIStackView!
    @IBOutlet weak var winnerName: UILabel!
    
    var cellCheck = Array(repeating: 0, count: 9)
    var currentPlayer = 1
    var boardCells: [(UIButton?)] = []
    var curpl = 0;
    
    // xxx
    // xxx
    // xxx
    var board = [
        0,0,0,
        0,0,0,
        0,0,0
    ]
    
    // The first line represents a win pattern
    // xxx
    // xox
    // oxo
    let winPatterns = [
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [2,4,6]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        boardCells = [
            cell0,
            cell1,
            cell2,
            cell3,
            cell4,
            cell5,
            cell6,
            cell7,
            cell8,

        ]
        clearBoard()
        print("Done initializing...")
        winnerView.isHidden = true
    }
    
    @IBAction func cellPressed(_ sender: UIButton) {
        let cellNumber = Int(sender.currentTitle!)!
        if board[cellNumber] == 0 {
            play(player: currentPlayer, cell: cellNumber )
            cellCheck[cellNumber] = 1
            
        }
        
        compTurn()
    }
    
    @IBAction func resetGamePressed(_ sender: UIButton) {
        print("Resseting Game")
        currentPlayer = 1
        clearBoard()
        playerNamesView.isHidden = false
        winnerView.isHidden = true
        
    }
    
    func compTurn(){
        if currentPlayer == 2 {

if cellCheck[0] == 1 && cellCheck[1] == 0 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
    play(player: currentPlayer, cell: 1 )
    cellCheck[1] = 2
}
            
            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                play(player: currentPlayer, cell: 4)
                cellCheck[4] = 2
            }
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                play(player: currentPlayer, cell: 6)
                                cellCheck[6] = 2
                            }
                                                if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                                    play(player: currentPlayer, cell: 7)
                                                    cellCheck[7] = 2
                                                }
                                                if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                    play(player: currentPlayer, cell: 5)
                                                    cellCheck[5] = 2
                                                }
                                                if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 7)
                                                    cellCheck[7] = 2
                                                }
                                     
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                               play(player: currentPlayer, cell: 7)
                               cellCheck[7] = 2
                           }

                             if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                play(player: currentPlayer, cell: 7)
                                cellCheck[7] = 2
                            }
                             if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                play(player: currentPlayer, cell: 8)
                                cellCheck[8] = 2
                            }
                                                 if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                    play(player: currentPlayer, cell: 6)
                                                    cellCheck[6] = 2
                                                }
                                                 if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                    play(player: currentPlayer, cell: 6)
                                                    cellCheck[6] = 2
                                                }
                                                 if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                    play(player: currentPlayer, cell: 3)
                                                    cellCheck[3] = 2
                                                }
            
                                    
                             if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                play(player: currentPlayer, cell: 7)
                                cellCheck[7] = 2
                            }
                                
                    
            
            
            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                play(player: currentPlayer, cell: 6)
                cellCheck[6] = 2
            }
                             if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                 play(player: currentPlayer, cell: 4)
                                 cellCheck[4] = 2
                             }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 7)
                                                        cellCheck[7] = 2
                                                    }
                                if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                    play(player: currentPlayer, cell: 5)
                                    cellCheck[5] = 2
                                }
                                                   if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 1 && cellCheck[5] == 2 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                                       play(player: currentPlayer, cell: 8)
                                                       cellCheck[8] = 2
                                                   }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 1 && cellCheck[5] == 2 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 8)
                                                        cellCheck[8] = 2
                                                    }
                                if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 0 && cellCheck[5] == 1 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                    play(player: currentPlayer, cell: 4)
                                    cellCheck[4] = 2
                                }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 7)
                                                        cellCheck[7] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 7)
                                                        cellCheck[7] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                                if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                    play(player: currentPlayer, cell: 4)
                                    cellCheck[4] = 2
                                }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 7)
                                                        cellCheck[7] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 7)
                                                        cellCheck[7] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 2 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                                if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                    play(player: currentPlayer, cell: 4)
                                    cellCheck[4] = 2
                                }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 5)
                                                        cellCheck[5] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
            
            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                play(player: currentPlayer, cell: 8)
                cellCheck[8] = 2
            }
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 2{
                                play(player: currentPlayer, cell: 3)
                                cellCheck[3] = 2
                            }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 6)
                                                        cellCheck[6] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 6)
                                                        cellCheck[6] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 7)
                                                        cellCheck[7] = 2
                                                    }
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 1 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 2{
                                play(player: currentPlayer, cell: 3)
                                cellCheck[3] = 2
                            }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 6)
                                                        cellCheck[6] = 2
                                                    }
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 2{
                                play(player: currentPlayer, cell: 6)
                                cellCheck[6] = 2
                            }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 5)
                                                        cellCheck[5] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 5)
                                                        cellCheck[5] = 2
                                                    }
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 2{
                                play(player: currentPlayer, cell: 3)
                                cellCheck[3] = 2
                            }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                play(player: currentPlayer, cell: 6)
                                cellCheck[6] = 2
                            }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 5)
                                                        cellCheck[5] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 5)
                                                        cellCheck[5] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 1 && cellCheck[5] == 1 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 3)
                                                        cellCheck[3] = 2
                                                    }
            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 0 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                play(player: currentPlayer, cell: 4)
                cellCheck[4] = 2
            }
            
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                play(player: currentPlayer, cell: 7)
                                cellCheck[7] = 2
                            }
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                play(player: currentPlayer, cell: 7)
                                cellCheck[7] = 2
                            }
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                play(player: currentPlayer, cell: 7)
                                cellCheck[7] = 2
                            }
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                play(player: currentPlayer, cell: 6)
                                cellCheck[6] = 2
                            }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 8)
                                                        cellCheck[8] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                play(player: currentPlayer, cell: 7)
                                cellCheck[7] = 2
                            }
                                                    
            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                play(player: currentPlayer, cell: 3)
                cellCheck[3] = 2
            }
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                play(player: currentPlayer, cell: 4)
                                cellCheck[4] = 2
                            }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 7)
                                                        cellCheck[7] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 7)
                                                        cellCheck[7] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 5)
                                                        cellCheck[5] = 2
                                                    }

            
            
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                play(player: currentPlayer, cell: 2)
                                cellCheck[2] = 2
                            }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 2 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 5)
                                                        cellCheck[5] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 2 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 5)
                                                        cellCheck[5] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 2 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 7)
                                                        cellCheck[7] = 2
                                                    }
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 0 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                play(player: currentPlayer, cell: 4)
                                cellCheck[4] = 2
                            }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 7)
                                                        cellCheck[7] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 7)
                                                        cellCheck[7] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                play(player: currentPlayer, cell: 8)
                                cellCheck[8] = 2
                            }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 4)
                                                        cellCheck[4] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 0 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 4)
                                                        cellCheck[4] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                play(player: currentPlayer, cell: 4)
                                cellCheck[4] = 2
                            }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 7)
                                                        cellCheck[7] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 7)
                                                        cellCheck[7] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                play(player: currentPlayer, cell: 3)
                cellCheck[3] = 2
            }
                        if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                            play(player: currentPlayer, cell: 4)
                            cellCheck[4] = 2
                        }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 5)
                                                        cellCheck[5] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 5)
                                                        cellCheck[5] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 8)
                                                        cellCheck[8] = 2
                                                    }
                        if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 0 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                            play(player: currentPlayer, cell: 4)
                            cellCheck[4] = 2
                        }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 8)
                                                        cellCheck[8] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                        play(player: currentPlayer, cell: 8)
                                                        cellCheck[8] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                        if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                            play(player: currentPlayer, cell: 4)
                            cellCheck[4] = 2
                        }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 5)
                                                        cellCheck[5] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                        if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 0{
                            play(player: currentPlayer, cell: 8)
                            cellCheck[8] = 2
                        }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 5)
                                                        cellCheck[5] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 4)
                                                        cellCheck[4] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 0 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 4)
                                                        cellCheck[4] = 2
                                                    }
                        if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                            play(player: currentPlayer, cell: 8)
                            cellCheck[8] = 2
                        }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 6)
                                                        cellCheck[6] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 1 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 2{
                                                        play(player: currentPlayer, cell: 6)
                                                        cellCheck[6] = 2
                                                    }
            
            if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                play(player: currentPlayer, cell: 4)
                cellCheck[4] = 2
            }
                        if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                            play(player: currentPlayer, cell: 7)
                            cellCheck[7] = 2
                        }
                        if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                            play(player: currentPlayer, cell: 7)
                            cellCheck[7] = 2
                        }
                        if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                            play(player: currentPlayer, cell: 7)
                            cellCheck[7] = 2
                        }
                        if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                            play(player: currentPlayer, cell: 7)
                            cellCheck[7] = 2
                        }
                        if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                            play(player: currentPlayer, cell: 6)
                            cellCheck[6] = 2
                        }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 2)
                                                        cellCheck[2] = 2
                                                    }
                                                    
                                                    if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                        play(player: currentPlayer, cell: 5)
                                                        cellCheck[5] = 2
                                                    }
                        
            
            
 
            
            
if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
    play(player: currentPlayer, cell: 4 )
    cellCheck[4] = 2
}
            
            if cellCheck[0] == 1 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                play(player: currentPlayer, cell: 3 )
                cellCheck[3] = 2
            }
                    if cellCheck[0] == 1 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 6 )
                        cellCheck[6] = 2
                    }
                    if cellCheck[0] == 1 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 6 )
                        cellCheck[6] = 2
                    }
                    if cellCheck[0] == 1 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 6 )
                        cellCheck[6] = 2
                    }
                    if cellCheck[0] == 1 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                        play(player: currentPlayer, cell: 6 )
                        cellCheck[6] = 2
                    }
                    if cellCheck[0] == 1 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 3 )
                        cellCheck[3] = 2
                    }
                                              if cellCheck[0] == 1 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                                  play(player: currentPlayer, cell: 5 )
                                                  cellCheck[5] = 2
                                              }
                                                if cellCheck[0] == 1 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 5 )
                                                    cellCheck[5] = 2
                                                }
                                                if cellCheck[0] == 1 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                                                    play(player: currentPlayer, cell: 7 )
                                                    cellCheck[7] = 2
                                                }
            if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                play(player: currentPlayer, cell: 0 )
                cellCheck[0] = 2
            }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                        play(player: currentPlayer, cell: 5 )
                        cellCheck[5] = 2
                    }
                                            if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                play(player: currentPlayer, cell: 3 )
                                                cellCheck[3] = 2
                                            }
                                            if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                play(player: currentPlayer, cell: 3 )
                                                cellCheck[3] = 2
                                            }
                                            if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                play(player: currentPlayer, cell: 7 )
                                                cellCheck[7] = 2
                                            }
            if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                play(player: currentPlayer, cell: 0 )
                cellCheck[0] = 2
            }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                        play(player: currentPlayer, cell: 6 )
                        cellCheck[6] = 2
                    }
                                                if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 2 )
                                                    cellCheck[2] = 2
                                                }
                                                if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 2 )
                                                    cellCheck[2] = 2
                                                }
                                                if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 5 )
                                                    cellCheck[5] = 2
                                                }
            if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                play(player: currentPlayer, cell: 0 )
                cellCheck[0] = 2
            }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                        play(player: currentPlayer, cell: 2 )
                        cellCheck[2] = 2
                    }
            
                                                if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 6 )
                                                    cellCheck[6] = 2
                                                }
                                                if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 6 )
                                                    cellCheck[6] = 2
                                                }
                                                if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 7 )
                                                    cellCheck[7] = 2
                                                }
            if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                play(player: currentPlayer, cell: 0 )
                cellCheck[0] = 2
            }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                        play(player: currentPlayer, cell: 3 )
                        cellCheck[3] = 2
                    }
                                            if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                play(player: currentPlayer, cell: 5 )
                                                cellCheck[5] = 2
                                            }
                                            if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                play(player: currentPlayer, cell: 5 )
                                                cellCheck[5] = 2
                                            }
                                            if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 2 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                play(player: currentPlayer, cell: 2 )
                                                cellCheck[2] = 2
                                            }
            if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                play(player: currentPlayer, cell: 0 )
                cellCheck[0] = 2
            }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                        play(player: currentPlayer, cell: 6 )
                        cellCheck[6] = 2
                    }
                                            if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                play(player: currentPlayer, cell: 2 )
                                                cellCheck[2] = 2
                                            }
                                            if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                play(player: currentPlayer, cell: 2 )
                                                cellCheck[2] = 2
                                            }
                                            if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 2 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                play(player: currentPlayer, cell: 3 )
                                                cellCheck[3] = 2
                                            }

            if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 0 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                play(player: currentPlayer, cell: 2 )
                cellCheck[2] = 2
            }
                    if cellCheck[0] == 1 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                        play(player: currentPlayer, cell: 6 )
                        cellCheck[6] = 2
                    }
                    if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                        play(player: currentPlayer, cell: 6 )
                        cellCheck[6] = 2
                    }
                    if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                        play(player: currentPlayer, cell: 6 )
                        cellCheck[6] = 2
                    }
                    if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                        play(player: currentPlayer, cell: 6 )
                        cellCheck[6] = 2
                    }
                    if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                        play(player: currentPlayer, cell: 7 )
                        cellCheck[7] = 2
                    }
                                                if cellCheck[0] == 1 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 2 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 3 )
                                                    cellCheck[3] = 2
                                                }
                                                if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 2 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 0 )
                                                    cellCheck[0] = 2
                                                }
                                                if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 2 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 2 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 0 )
                                                    cellCheck[0] = 2
                                                }
            
            
            
            
if cellCheck[0] == 0 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 0 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
    play(player: currentPlayer, cell: 4 )
    cellCheck[4] = 2
}
        if cellCheck[0] == 0 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
            play(player: currentPlayer, cell: 8 )
            cellCheck[8] = 2
        }
                  if cellCheck[0] == 0 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 2{
                      play(player: currentPlayer, cell: 0 )
                      cellCheck[0] = 2
                  }
                    if cellCheck[0] == 0 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 2{
                        play(player: currentPlayer, cell: 0 )
                        cellCheck[0] = 2
                    }
                    if cellCheck[0] == 0 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 2{
                        play(player: currentPlayer, cell: 0 )
                        cellCheck[0] = 2
                    }
                    if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 2{
                        play(player: currentPlayer, cell: 0 )
                        cellCheck[0] = 2
                    }
                    if cellCheck[0] == 1 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 2{
                        play(player: currentPlayer, cell: 3 )
                        cellCheck[3] = 2
                    }
        if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
            play(player: currentPlayer, cell: 0 )
            cellCheck[0] = 2
        }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                        play(player: currentPlayer, cell: 8 )
                        cellCheck[8] = 2
                    }
                    if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                        play(player: currentPlayer, cell: 5 )
                        cellCheck[5] = 2
                    }
                                        if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                            play(player: currentPlayer, cell: 3 )
                                            cellCheck[3] = 2
                                        }
                                        if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                            play(player: currentPlayer, cell: 3 )
                                            cellCheck[3] = 2
                                        }
                                        if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                            play(player: currentPlayer, cell: 7 )
                                            cellCheck[7] = 2
                                        }
        if cellCheck[0] == 1 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
            play(player: currentPlayer, cell: 1 )
            cellCheck[1] = 2
        }
                if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 7 )
                    cellCheck[7] = 2
                }
                if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                    play(player: currentPlayer, cell: 7 )
                    cellCheck[7] = 2
                }
                if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 7 )
                    cellCheck[7] = 2
                }
                if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 7 )
                    cellCheck[7] = 2
                }
                if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 5 )
                    cellCheck[5] = 2
                }
                                        if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                            play(player: currentPlayer, cell: 3 )
                                            cellCheck[3] = 2
                                        }
                                        if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                            play(player: currentPlayer, cell: 3 )
                                            cellCheck[3] = 2
                                        }
                                        if cellCheck[0] == 1 && cellCheck[1] == 2 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                                            play(player: currentPlayer, cell: 6 )
                                            cellCheck[6] = 2
                                        }
        if cellCheck[0] == 0 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
            play(player: currentPlayer, cell: 0 )
            cellCheck[0] = 2
        }
                if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 8 )
                    cellCheck[8] = 2
                }
                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 8 )
                    cellCheck[8] = 2
                }
                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 8 )
                    cellCheck[8] = 2
                }
                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 8 )
                    cellCheck[8] = 2
                }
                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                    play(player: currentPlayer, cell: 5 )
                    cellCheck[5] = 2
                }
                                            if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                play(player: currentPlayer, cell: 7 )
                                                cellCheck[7] = 2
                                            }
                                            if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                play(player: currentPlayer, cell: 7 )
                                                cellCheck[7] = 2
                                            }
                                            if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                play(player: currentPlayer, cell: 6 )
                                                cellCheck[6] = 2
                                            }
        if cellCheck[0] == 0 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
            play(player: currentPlayer, cell: 0 )
            cellCheck[0] = 2
        }
                if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 8 )
                    cellCheck[8] = 2
                }
                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 8 )
                    cellCheck[8] = 2
                }
                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 8 )
                    cellCheck[8] = 2
                }
                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 8 )
                    cellCheck[8] = 2
                }
                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                    play(player: currentPlayer, cell: 5 )
                    cellCheck[5] = 2
                }
                                                if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 3 )
                                                    cellCheck[3] = 2
                                                }
                                                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 3 )
                                                    cellCheck[3] = 2
                                                }
                                                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 7 )
                                                    cellCheck[7] = 2
                                                }
        if cellCheck[0] == 0 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
            play(player: currentPlayer, cell: 0 )
            cellCheck[0] = 2
        }
                if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 8 )
                    cellCheck[8] = 2
                }
                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 8 )
                    cellCheck[8] = 2
                }
                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 1 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 8 )
                    cellCheck[8] = 2
                }
                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 0{
                    play(player: currentPlayer, cell: 8 )
                    cellCheck[8] = 2
                }
                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                    play(player: currentPlayer, cell: 5 )
                    cellCheck[5] = 2
                }
                                                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 1 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 3 )
                                                    cellCheck[3] = 2
                                                }
                                                if cellCheck[0] == 2 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 3 )
                                                    cellCheck[3] = 2
                                                }
                                                if cellCheck[0] == 2 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 6 )
                                                    cellCheck[6] = 2
                                                }
        if cellCheck[0] == 0 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 0 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
            play(player: currentPlayer, cell: 5 )
            cellCheck[5] = 2
        }
            if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                play(player: currentPlayer, cell: 3 )
                cellCheck[3] = 2
            }
            if cellCheck[0] == 1 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                play(player: currentPlayer, cell: 3 )
                cellCheck[3] = 2
            }
            if cellCheck[0] == 0 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 1 && cellCheck[7] == 0 && cellCheck[8] == 1{
                play(player: currentPlayer, cell: 3 )
                cellCheck[3] = 2
            }
            if cellCheck[0] == 0 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 0 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 0 && cellCheck[7] == 1 && cellCheck[8] == 1{
                play(player: currentPlayer, cell: 3 )
                cellCheck[3] = 2
            }
            if cellCheck[0] == 0 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 0 && cellCheck[7] == 0 && cellCheck[8] == 1{
                play(player: currentPlayer, cell: 7 )
                cellCheck[7] = 2
            }
                                                if cellCheck[0] == 0 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 1 && cellCheck[7] == 2 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 1 )
                                                    cellCheck[1] = 2
                                                }
                                                if cellCheck[0] == 1 && cellCheck[1] == 0 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 0 && cellCheck[7] == 2 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 1 )
                                                    cellCheck[1] = 2
                                                }
                                                if cellCheck[0] == 0 && cellCheck[1] == 1 && cellCheck[2] == 1 && cellCheck[3] == 1 && cellCheck[4] == 2 && cellCheck[5] == 2 && cellCheck[6] == 0 && cellCheck[7] == 2 && cellCheck[8] == 1{
                                                    play(player: currentPlayer, cell: 0 )
                                                    cellCheck[0] = 2
                                                }
            
            
    
        }
    }
    
    func clearBoard (){
        board = [
            0,0,0,
            0,0,0,
            0,0,0
        ]
        player1Name.font = UIFont.init(name: "System", size: 21)
        for cell in boardCells{
            cell!.setBackgroundImage(UIImage.init(named: "emptyCell"), for: .normal)
        }
    }
    
    func play (player:Int, cell:Int){
         
        board[cell] = player
        if(player == 1){
            boardCells[cell]?.setBackgroundImage(UIImage.init(named: "oCell"), for: .normal)
            player1Name.font = UIFont.systemFont(ofSize: 17)
            player2Name.font = UIFont.systemFont(ofSize: 21)
            
        }else{
            boardCells[cell]?.setBackgroundImage(UIImage.init(named: "xCell"), for: .normal)
            player2Name.font = UIFont.systemFont(ofSize: 17)
            player1Name.font = UIFont.systemFont(ofSize: 21)
            
        }
        let winner: Int? = checkWinner()
        if (winner == nil ){
            currentPlayer = changePlayer(player)
        }else{
            endGame()
        }
    }
    
    func changePlayer(_ player: Int)-> Int{
        if player == 1 {
            return 2
            
        } else {
            return 1
        }
    }
    
    func checkWinner()-> Int? {
        for pattern in winPatterns{
            var cnt = 0
            for cell in pattern{
                if(board[cell] == currentPlayer){
                    cnt += 1
                }
            }
            if(cnt == 3){
                
                
                return currentPlayer
                 
            }
            cnt = 0
        }
        return nil
    }
    
    func endGame(){
        board = [
            3,3,3,
            3,3,3,
            3,3,3
        ]
        if(currentPlayer == 1 ){
            winnerName.textColor = UIColor.init(red: 245/255, green: 239/255, blue: 211/255, alpha: 1.0)
            winnerName.text = "PLAYER 1"
             winnerName.textColor = UIColor.init(named: "Black")
        }else{
            winnerName.text = "AI"
            winnerName.textColor = UIColor.init(named: "Black")
        }
        playerNamesView.isHidden = true
        winnerView.isHidden = false
      
    }
}


