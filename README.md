# 2019_DEV_154

Score a bowling game.

Bowling is a game where players roll a heavy ball to knock down pins arranged in a triangle. Write code to keep track of the score of a game of bowling.

Scoring Bowling

The game consists of 10 frames. A frame is composed of one or two ball throws with 10 pins standing at frame initialization. There are three cases for the tabulation of a frame.

An open frame is where a score of less than 10 is recorded for the frame. In this case the score for the frame is the number of pins knocked down.

A spare is where all ten pins are knocked down by the second throw. The total value of a spare is 10 plus the number of pins knocked down in their next throw.

A strike is where all ten pins are knocked down by the first throw. The total value of a strike is 10 plus the number of pins knocked down in the next two throws. If a strike is immediately followed by a second strike, then the value of the first strike cannot be determined until the ball is thrown one more time.



Track the score of a game of bowling. 

It should support two functions:

func ballroll(_ pins: Int) - it is called each time the player rolls a ball.

func totalscore() -> Int - it is called only at the end of the game. It will returns us the total score for that game.


