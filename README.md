# Simple Task Manager – SaaS App

## Overview
This is a simple Task Manager web application built with **Ruby on Rails**. It allows users to **Create, Read, Update, Delete (CRUD)** tasks and mark them as complete or incomplete. The project also includes **BDD testing with Cucumber**.

---

## Features
- **Task CRUD:** Create, Read, Update, Delete tasks
- **Task Completion:** Mark tasks as complete or incomplete
- **BDD Tests:** Cucumber feature tests for task creation
- **Git Version Control:** Project is tracked on GitHub

---

## Getting Started

### Prerequisites
- Ruby >= 3.x
- Rails >= 8.x
- SQLite3 (or other database)
- Bundler

### Installation
1. Clone the repository:
   ```bash
   git clone <YOUR_REPO_URL>
   cd <YOUR_PROJECT_FOLDER>

2- Install dependencies:
bundle install


3- Setup the database:
rails db:create
rails db:migrate


4- Start the Rails server
rails server


Testing
Cucumber BDD

Run feature tests with:

bundle exec cucumber

RSpec (not implemented yet)
bundle exec rspec

Future Improvements

Add RSpec unit tests for models and controllers

Add Cucumber scenarios for Update, Delete, Complete features

Improve README.md documentation with screenshots and examples

Optional: Deploy the app to Heroku or any cloud platform