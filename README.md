# sparta-COYI-rails-project

# README
To use this project git pull or clone the repository to your computer

If you are in sparta-COYI-rails-project change directory into COYI.

If this is the first time using the project run

```
rails db:schema:load
```

Otherwise run

```
rails db:migrate
```

Then run

```
bundle install
```

To add the needed gems

---

This project was created following the documentation created by Sparta Global's Business 8 class. It aims to meet the requirements agreed to between Sparta and the Circle of Young Intrapreneurs.

It was built using the following technology:

* Ruby 2.4.2

* Rails 5.2

* PostgreSQL

* Bootstrap 4.1.1

The full list of gems used is contained in root/Gemfile

Important gems
* Devise
* Pundit
* Bbootstrap
* Jquery-rails
* Popper_js
* Figaro


---

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialisation

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions


# Whole site
Site is built to be mobile first

Site theme is
* Red:  #F0564E
* White: #FFFFFF
* Backgrounds are cityscapes.
* Font is Roboto
* All links are capitalised
* No sharp corners
* Circles are used heavily



## Global partials

### Nav bar
Nav bar is visible on all pages

Nav bar currently links to
* Logo - links to home page
* Our circle (drop down)
  * Global forum
  * Chapter forum
  * Ask an advocate
  * News
  * Forum rules
* Success Stories
* Project hub
* Resources
* News
* Profile
  * Edit profile
  * Logout
* About us

### Footer
Footer is at the bottom of all pages.

Footer contains links to
* Contact us
* FAQ
* Copyright text

---

## Map
###### File locations

Map file is located in: app/assets/javascripts/map.js
Map container div and related HTML is located in: app/views/home/home.html.erb

###### Functionality

Map uses Google maps API. Currently running with a Spartan's API key (Adam).
Markers are hard-coded in. Any new markers added will currently have to be hard coded in as well.
Map conflicts with turbolinks gem. This is due to turbo links not loading the page properly when switching. Turbo links has currently been disabled. Alternatively a button can be used to refresh the page and show the map.

###### Appearance

Map land is #ffffff a white.
Map background (the sea) is #F0564E the same red as the website

---

## Back End

###### Controllers
There is a separate section for Devise user controllers in: app/controllers/users

Devise User Controllers - each one has an associated view(s)
* Confirmations
* OmniAuth - devise default, untouched
* Passwords
* Registrations
* Sessions
* Unlocks

Other Controllers - each has an associated view(s)
* About
* Application
* Challenges
* Chapters
* Circle
* Home
* News
* Projects
* Resources
* Success
* User - not Devise

###### Authentication

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

The password complexity requires at least 1 of each of the following:
* capital
* lowercase
* number
* special character (any punctuation)

It also requires that the password is at least 8 characters long.
The file for this is in: app/models/user.rb in the method "password_complexity".

Email must be confirmed to log in.

Password can be reset by going to "login" then clicking the "Forgot my password" button. The email entered must be registered.

###### Pundit
Controls user access levels
Each level can view more information in the resources page
The levels go from 0 - 5.
* 0 - Non-member
* 1 - Non-active member
* 2 - Aspiring social intrapreneur
* 3 - Practicing social intrapreneur
* 4 - Advocate / Expert
* 5 - Chapter lead



## Database
Database uses PostgreSQL
Database informaton is in: db/schema
The database contains 6 tables
* Challenges
  * email address
  * first name
  * last name
  * location
  * organisation
* Chapters
  * name
  * city
  * country
  * user id
* Hundred day Challenges
  * Email
  * Address
  * First_name
  * Last_name
  * Location"
  * Organisation
* News
  * title
  * story
  * published
* Projects
  * title
  * status
  * user_id
  * description
* Users
  * Email
  * Encrypted password - Devise
  * Sign in count
  * First name
  * Last name
  * User name
  * Location
  * Country
  * Date of Birth (DOB)
  * Role
