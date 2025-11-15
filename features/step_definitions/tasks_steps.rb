Given("I am on the tasks page") do
  visit tasks_path
end

When("I add a new task") do
  visit tasks_path
  click_on "New Task"
  fill_in "Title", with: "Test Task"
  fill_in "Description", with: "This is a test"
  click_on "Create Task"
end

Then("I should see it in the list") do
  expect(page).to have_content("Test Task")
end
