# features/step_definitions/tasks_steps.rb

Given("I am on the tasks page") do
  visit tasks_path
end

When("I add a new task with title {string} and description {string}") do |title, description|
  fill_in "task_title", with: title        # متوافق مع id الناتج من Rails
  fill_in "task_description", with: description
  click_button "Create Task"
end

Then("I should see {string}") do |content|
  expect(page).to have_content(content)
end

Then("I should see {string} in the task list") do |content|
  expect(page).to have_content(content)
end

Given("I have the following tasks:") do |table|
  table.hashes.each do |task|
    Task.create!(title: task['title'], description: task['description'])
  end
end

When("I visit the tasks page") do
  visit tasks_path
end

When("I edit the task to have title {string}") do |new_title|
  task = Task.last
  visit edit_task_path(task)
  fill_in "task_title", with: new_title
  click_button "Update Task"
end

When("I delete the task") do
  visit tasks_path
  click_button "Delete"
end

Then("I should not see {string} in the task list") do |content|
  expect(page).not_to have_content(content)
end

Given("I have a task with title {string}") do |title|
  Task.create!(title: title, description: "Some description", completed: false)
end

Given("I have a task with title {string} marked complete") do |title|
  Task.create!(title: title, description: "Desc", completed: true)
end

When("I mark the task as complete") do
  task = Task.last
  task.update(completed: true)
end

When("I mark the task as incomplete") do
  task = Task.last
  task.update(completed: false)
end

Then("the task should be marked as complete") do
  task = Task.last
  expect(task.completed).to eq(true)
end

Then("the task should be marked as incomplete") do
  task = Task.last
  expect(task.completed).to eq(false)
end
