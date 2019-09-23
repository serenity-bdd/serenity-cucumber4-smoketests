Feature: Research things on the web

  Scenario: Researching a thing
    Given Sergey is on the DuckDuckGo home page
    When he searches for "Cucumber"
    Then all the result titles should contain the word "Cucumber"

  @manual
  Scenario: Researching a thing by hand
    Given Sergey is on the DuckDuckGo home page
    And he has searched for "Cucumber"
    When he searches again for "Pumpkin"
    Then all the result titles should contain the word "Pumpkin"