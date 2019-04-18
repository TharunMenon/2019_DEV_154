//
//  BowlingTests.swift
//  BowlingTests
//
//  Created by Tharun Menon on 18/04/2019.
//  Copyright © 2019 Tharun Menon. All rights reserved.
//

import XCTest
@testable import Bowling

class BowlingTests: XCTestCase {

    private var bowlingGame: BowlingController!
    override func setUp() {
        super.setUp()
        bowlingGame = BowlingController()
    }
    
    override func tearDown() {
        bowlingGame = nil
        super.tearDown()
    }
    
    private func rollBallMany(pins: Int, times: Int) {
        for _ in 1...times {
            bowlingGame.ballroll(pins)
        }
    }
    
    func testGame() {
        rollBallMany(pins: 0, times: 20)
        XCTAssertEqual(bowlingGame.totalscore(), 0)
    }
    
    func testAllOnes() {
        rollBallMany(pins: 1, times: 20)
        XCTAssertEqual(bowlingGame.totalscore(), 20)
    }
    
    private func rollBallStrike() {
        bowlingGame.ballroll(10)
    }
    
    private func rollBallSpare() {
        bowlingGame.ballroll(5)
        bowlingGame.ballroll(5)
    }
    
    func testOneBallSpare() {
        rollBallSpare()
        bowlingGame.ballroll(3)
        rollBallMany(pins: 0, times: 17)
        XCTAssertEqual(bowlingGame.totalscore(), 16)
    }
    
    func testOneBallStrike() {
        rollBallStrike()
        bowlingGame.ballroll(3)
        bowlingGame.ballroll(4)
        rollBallMany(pins: 0, times: 16)
        XCTAssertEqual(bowlingGame.totalscore(), 24)
    }
    
    func testActualGame() {
        rollBallMany(pins: 10, times: 12)
        XCTAssertEqual(bowlingGame.totalscore(), 300)
    }
   

}
