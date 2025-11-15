Feature: Tasks management

  Scenario: Add a new task
    Given I am on the tasks page
    When I add a new task with title "Test Task" and description "Task description"
    Then I should see "Test Task" in the task list

  Scenario: View all tasks
    Given I have the following tasks:
      | title       | description        |
      | Task One    | Description One   |
      | Task Two    | Description Two   |
    When I visit the tasks page
    Then I should see "Task One"
    And I should see "Task Two"

  Scenario: Update a task
    Given I have a task with title "Old Title"
    When I edit the task to have title "Updated Title"
    Then I should see "Updated Title" in the task list

  Scenario: Delete a task
    Given I have a task with title "Delete Me"
    When I delete the task
    Then I should not see "Delete Me" in the task list

  Scenario: Mark a task complete
    Given I have a task with title "Incomplete Task"
    When I mark the task as complete
    Then the task should be marked as complete

  Scenario: Mark a task incomplete
    Given I have a task with title "Completed Task" marked complete
    When I mark the task as incomplete
    Then the task should be marked as incomplete
