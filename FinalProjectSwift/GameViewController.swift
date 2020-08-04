//
//  GameViewController.swift
//  FinalProjectSwift
//
//  Created by Kiril Mankovskyi on 2020-07-23.
//  Copyright © 2020 Kirill Barsukov. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    
    //@IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var aiLabel: UILabel!
    @IBOutlet weak var firstPlayerName: UILabel!;
    @IBOutlet weak var secondPlayerName: UILabel!;
    @IBOutlet weak var playerNamesView: UIStackView!;
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    var currentPlayer = 1;
    var boardCells: [(UIButton?)] = [];
    
    // xxx
    // xxx
    // xxx
    var boardMatrix = [
        0,0,0,
        0,0,0,
        0,0,0
    ];
    
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
    ];
    
    override func viewDidLoad() {
        super.viewDidLoad();
        boardCells = [
            btn1,
            btn2,
            btn3,
            btn4,
            btn5,
            btn6,
            btn7,
            btn8,
            btn9,
        ];
        resetBoard();
        winnerLabel.isHidden = true;
    }
    
    // call when one of cells is pressed
   @IBAction func cellPressed(_ sender: UIButton) {
       let cellNumber = Int(sender.currentTitle!)!;
       if boardMatrix[cellNumber] == 0 {
           play(player: currentPlayer, cell: cellNumber );
       }
   }
   
   // call when reset button is pressed
   @IBAction func resetGameButtonPressed(_ sender: UIButton) {
       resetBoard();
       playerNamesView.isHidden = false;
       winnerLabel.isHidden = true;
   }
   
   // reset the board
   func resetBoard (){
       boardMatrix = [
           0,0,0,
           0,0,0,
           0,0,0
       ];
       firstPlayerName.font = UIFont.init(name: "TradeWinds", size: 21);
       for cell in boardCells{
           cell!.setBackgroundImage(UIImage.init(named: "emptyCell"), for: .normal);
       }
   }
   
   // play the game
   func play (player:Int, cell:Int){
       boardMatrix[cell] = player;
       if(player == 1){
           boardCells[cell]?.setBackgroundImage(UIImage.init(named: "oCell"), for: .normal);
           firstPlayerName.font = UIFont.init(name: "TradeWinds", size: 17);
           secondPlayerName.font = UIFont.init(name: "TradeWinds", size: 21);
       } else {
           boardCells[cell]?.setBackgroundImage(UIImage.init(named: "xCell"), for: .normal);
           secondPlayerName.font = UIFont.init(name: "TradeWinds", size: 17);
           firstPlayerName.font = UIFont.init(name: "TradeWinds", size: 21);
       }
       
       let winner: Int? = checkTheWinner();
       
       if (winner == nil ){
           currentPlayer = changePlayer(player);
       } else {
           finishGame();
       }
   }
   
   func changePlayer(_ player: Int)-> Int{
       if player != 1 {
           return 1;
       } else {
           return 2;
       }
   }
   
   func checkTheWinner()-> Int? {
       for pattern in winPatterns{
           var cnt = 0;
           for cell in pattern{
               if(boardMatrix[cell] == currentPlayer){
                   cnt += 1;
               }
           }
           if(cnt == 3){
               return currentPlayer;
           }
           cnt = 0;
       }
       return nil;
   }
   
   func finishGame(){
       boardMatrix = [
           3,3,3,
           3,3,3,
           3,3,3
       ];
       if(currentPlayer == 1 ){
           winnerLabel.textColor = UIColor.init(red: 245/255, green: 239/255, blue: 211/255, alpha: 1.0);
           winnerLabel.text = "1 PLAYER";
       } else {
           winnerLabel.text = "2 PLAYER";
           winnerLabel.textColor = UIColor.init(named: "Black");
       }
       playerNamesView.isHidden = true;
       winnerLabel.isHidden = false;
   }

}
