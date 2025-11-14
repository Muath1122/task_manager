require 'rails_helper'

RSpec.describe Task, type: :model do
  it "is valid with a title" do
    task = Task.new(title: "Test Task")
    expect(task).to be_valid
  end

  it "is invalid without a title" do
    task = Task.new(title: nil)
    expect(task).not_to be_valid
  end

  it "can be marked as completed" do
    task = Task.new(title: "Do Homework", completed: false)
    task.completed = true
    expect(task.completed).to eq(true)
  end
end
