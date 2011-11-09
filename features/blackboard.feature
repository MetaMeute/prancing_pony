Feature: the blackboard
  In order to manage their credits
  all suffköppe
  want to have a blackboard.

  Background:
    Given the counter for "beer" is at "43"
    And the counter for "mate" is at "24"
    And the blackboard lists these values:
      | name   | drunk | debit |
      | Robert | 22    | 0     |
      | Mike   | 22    | 0     |
      | Matze  | 9001  | 100   |
    Given I am on the blackboard page

  Scenario: Get an overview
    Given I do nothing
    Then the blackboard should list these values:
      | name   | drunk | debit |
      | Robert | 22    | 0     |
      | Mike   | 22    | 0     |
      | Matze  | 9001  | 100   |
    And the counter for "beer" should be at "43"
    And the counter for "mate" should be at "24"
  
  Scenario: Chalk up a drink for myself
    Given I am logged in as "Robert"
    When I press "Beer!"
    Then my drinking counter should be at "23"
    And my credit should be at "1"
    And the counter for "beer" should be "42"

  Scenario: Chalk up a drink for others
    Given I am logged in as "Robert"
    When I select "Mike" within "Suffkopp"
    And I press "Beer!"
    Then the drinking counter for "Mike" should be at "23"
    And the credit of "Mike" is at "11"
    And the counter for "beer" should be at "42"

  Scenario: Pay the bill
    Given I am logged in as "Matze"
    When I fill in "90" within "pay"
    And I press "Pay!"
    Then my credit should be at "10"

