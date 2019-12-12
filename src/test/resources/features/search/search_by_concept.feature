Feature: Search by concept

  Scenario Outline: Searching for a concept
    Given Sergey is on the search page
    When he searches for "<word>"
    Then all the result titles should contain the word "<title>"
    Examples:
      | word   | title |
      | Red    | R     |
      | Blue   | B     |
      | Green  | G     |
      | Yellow | Y     |

  Scenario: Searching a thing
    Given Sergey is on the search page
    When he searches for "Pumpkin"
    Then all the result titles should contain the word "Pumpkin"
