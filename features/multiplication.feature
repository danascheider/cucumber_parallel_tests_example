Feature: Multiplication

  Scenario: All positive numbers
    Given a multiplier instance
    When I multiply 2 * 2
    Then the result should be 4