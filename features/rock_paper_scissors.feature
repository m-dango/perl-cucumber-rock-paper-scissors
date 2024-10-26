Feature: Rock Paper Scissors

  A game of Rock Paper Scissors

  Scenario: Game ends in a draw
    Given player 1 chooses "rock"
    And player 2 chooses "rock"
    When the game is played
    Then the game ends in a draw

  Scenario Outline: Player <winner> wins
    Given player 1 chooses "<item 1>"
    And player 2 chooses "<item 2>"
    When the game is played
    Then player <winner> wins the game

    Examples:
      | item 1   | item 2   | winner |
      | rock     | scissors | 1      |
      | paper    | rock     | 1      |
      | scissors | paper    | 1      |
      | rock     | paper    | 2      |
      | paper    | scissors | 2      |
      | scissors | rock     | 2      |
