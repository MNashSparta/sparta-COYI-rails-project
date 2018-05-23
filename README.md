# sparta-COYI-rails-project

# README


This project was created following the documentation created by Business 8. It aims to meet the requirements agreed to between Sparta and Circle of Young Intrapreneurs.

It was built using the following technology:

* Ruby 2.4.2

* Rails 5.2

* PostgreSQL







Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# User authentication

Authentication is handled with a gem called Devise.

For the user to sign up requires :
* username
* first name
* second name
* password (of sufficient complexity)
* email
* location
* country
* date of birth

There are no optional fields.

The password complexity requires at least 1 of each of the following: capital, lowercase, number, and special character. It also requires that the password is at least 8 characters long.
The file for this is in "app/models/user.rb" in the method "password_complexity".
