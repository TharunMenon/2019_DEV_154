//
//  BowlingController.swift
//  Bowling
//
//  Created by Tharun Menon on 18/04/2019.
//  Copyright © 2019 Tharun Menon. All rights reserved.
//

import Foundation

final class BowlingController {
    
    private var ballRolls = [Int](repeating: 0, count: 21)
    private var currentballRoll = 0
    
    
    // MARK: - Function to call each time when ball rolled
    
    func ballroll(_ pins: Int) {
        ballRolls[currentballRoll] = pins
        currentballRoll += 1
        
    }
    
    // MARK: - Function to get total score
    
    func totalscore() -> Int {
        
        var score = 0
        var ballRoll = 0
        for _ in 1...10 {
            if (ballStrike(ballRoll)) {
                score += 10 + strikeBallBonus(ballRoll)
                ballRoll += 1
            } else if ballSpare(ballRoll) {
                score += 10 + spareBallBonus(ballRoll)
                ballRoll += 2
            } else {
                score += sumOfBall(ballRoll)
                ballRoll += 2
            }
        }
        return score
    }
    
    private func ballStrike(_ ballRoll: Int) -> Bool {
        return ballRolls[ballRoll] == 10
    }
    
    private func ballSpare(_ ballRoll: Int) -> Bool {
        return ballRolls[ballRoll] + ballRolls[ballRoll + 1] == 10
    }
    
    private func strikeBallBonus(_ ballRoll: Int) -> Int {
        return ballRolls[ballRoll + 1] + ballRolls[ballRoll + 2]
    }
    
    private func spareBallBonus(_ ballRoll: Int) -> Int {
        return ballRolls[ballRoll + 2]
    }
    
    private func sumOfBall(_ ballRoll: Int) -> Int {
        return ballRolls[ballRoll] + ballRolls[ballRoll + 1]
    }
    
    
    
}
