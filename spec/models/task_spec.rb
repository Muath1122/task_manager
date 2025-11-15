require 'rails_helper'

RSpec.describe Task, type: :model do
  it "is valid with a title and description" do
    task = Task.new(title: "Test Task", description: "Task description")
    expect(task).to be_valid
  end

  it "is invalid without a title" do
    task = Task.new(title: nil, description: "Some description")
    expect(task).not_to be_valid
  end

  it "is invalid without a description" do
    task = Task.new(title: "Test Task", description: nil)
    expect(task).not_to be_valid
  end

  it "can be marked as completed" do
    task = Task.new(title: "Do Homework", description: "Math homework", completed: false)
    task.completed = true
    expect(task.completed).to eq(true)
  end
end
