Feature: Search by keyword

  Scenario Outline: Searching for a keyword
    Given Sergey is on the search page
    When he searches for "<word>"
    Then all the result titles should contain the word "<title>"

    @colors:primary
    Examples: Primary colors
    Some nice bright colors
      | word   | title  |
      | Red    | R      |
      | Blue   | FAILED |
      | Yellow | Y      |

    @colors:secondary
    Examples: Secondary colors
    These colors are very nice too
      | word   | title  |
      | Green  | G      |
      | Orange | BROKEN |
      | Purple | P      |

  Scenario: Searching another keyword
  Sergey needs a pumpkin
    Given Sergey is on the search page
    When he searches for "Pumpkin"
    Then all the result titles should contain the word "Pumpkin"

  Scenario: Searching for yet another keyword
    Given Sergey is on the search page
    When he searches for "Pumpkin"
    Then all the result titles should contain the word "Pumpkin"
