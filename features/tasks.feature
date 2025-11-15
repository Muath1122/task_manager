Feature: Tasks management

  Scenario: Add a new task
    Given I am on the tasks page
    When I add a new task
    Then I should see it in the list
