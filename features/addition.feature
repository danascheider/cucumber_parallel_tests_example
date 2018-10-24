Feature: Addition

  Scenario: All positive numbers
    Given an adder instance
    When I add 1 + 1
    Then the result should be 2

  Scenario: One positive and one negative number
    Given an adder instance
    When I add 1 + -1
    Then the result should be 0

  Scenario: Two negative numbers
    Given an adder instance
    When I add -1 + -1
    Then the result should be -2