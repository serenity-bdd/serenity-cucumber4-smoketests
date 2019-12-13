Feature: Search by keyword

  Here we search for stuff with keywords.Some nice examples here:
  {Examples!WithTitle} Searching for a keyword

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
      | Orange | O      |
      | Purple | BROKEN |
      | Pink   | P      |

    @colors:monocrome
    Examples: Monocrome colors
    These colors are very nice too
      | word        | title |
      | Black       | B     |
      | White       | W     |
      | Transparent | T     |

    @colors:monocrome
    Examples: More Monocrome colors
    These colors are very nice too
      | word         | title |
      | Dark Black   | BROKEN     |
      | Bright White | W     |

  Scenario: Searching another keyword
  Sergey needs a pumpkin
    Given Sergey is on the search page
    When he searches for "Pumpkin"
    Then all the result titles should contain the word "Pumpkin"

  Scenario: Searching for yet another keyword
    Given Sergey is on the search page
    When he searches for "Pumpkin"
    Then all the result titles should contain the word "Pumpkin"
