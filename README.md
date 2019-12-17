# Bookshelf Web App

![](/readme_screenshots/homepage.png)


## ABOUT THE PROJECT:

**The project is avaliable via the link: https://serene-river-41980.herokuapp.com/**
*Bookshelf project was developed by the author as a part of MSc Information Technology course as a prototype of a bigger e-commerce website in order to demonstrate different IT skills of the student, technology and its potential implementation. The idea was inspired by the dataset found in Kaggle: to gather a list of good books in one place, where the data is complemented by the images (live data) and  will be regularly updated from its sources and provide the users with free data visualization, analytical and e-commerce tools with options to download the selected results.The aim of the current project is to demonstrate a scope of such application as a demo prototype for the future development. 

## The Context and DataSet Source:

>**The Good Read Dataset** 
This dataset was taken from the open-data source. The original document can be downloaded following this link: https://www.kaggle.com/jealousleopard/goodreadsbooks

This idea of this project if a welcoming e-bookshop, where the users feel comfortable and are willing to stay for long. In addition to the e-commerce functionality, the following features have been added: contact page for feedback, Stories page to attract more users to reading, About page with the details about the project, the dataset presented and graphs (currently not displaying). For Usability, in addition to open data source, live data has been linked in a form of bookcovers to illustrate the users what products they should expect. However, not all ISBN codes in the dataset  are matching the image library, provided by Open Library Covers API (https://openlibrary.org/dev/docs/api/covers). Another initiative was to embed the reader using Google Books API https://developers.google.com/books/docs/v1/getting_started, but the constrains (paid account and mismatching ISBN) postponed this idea for future releases. 

In addition to that, Users are enabled to sign up/login/ to get their personal accounts and each user can perform CRUD (Create, Read, Update, Delete) operations with their accounts. Users also have notifications and alers on their actions; each user can access their profile, settings, notes (enabling them to CRUD posts - a useful feature to create a shopping/reading list or leave themselves/others a memo). Admin Users have an additional menu item in drop-down: Admin Controls, wehre they can monitor the statistics about the website, users, orders, purchases, etc. and extract the data in the format needed. 

Admin Account: "admin@gmail.com"
Password: "password"

User Account: "user@example.com"
Password: "testpassword"

## TARGET USERS:
First of all, this project was designed for book-lovers – regular users, and also for entrepreneurs (admin users), who might be interested in adapting an open-source code for their needs, in this case – book shop. 

### Top-level User stories (functional requirements, based on assumptions): :
*	A User should be able to access the web app from different devices via the link:  https://serene-river-41980.herokuapp.com/  
*	A User should be able to navigate easily through responsive menu and analytical tools. 
*	A User should be able to access open source and live data displayed on the website.
*	A User should be able to order/purchase the products presented. 
*	A User should be able to select data attributes and display the analysis results. 
*	An authorized User should be able to use tools provided in secure regime (if authorized).
*	An Admin User should be able to access admin controls and to monitor the website stats and manage the data and other users.


## Ruby version

```ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-darwin18]```

```Rails 6.0.1```

**System dependencies:**

*file: package.json. Node dependencies:*


    "@rails/actioncable": "^6.0.0",
    "@rails/activestorage": "^6.0.0",
    "@rails/ujs": "^6.0.0",
    "@rails/webpacker": "^4.2.0",
    "bootstrap": "^4.4.1",
    "chart.js": "^2.9.3",
    "chartkick": "^3.2.0",
    "jquery": "^3.4.1",
    "jquery-ui-bundle": "^1.12.1-migrate",
    "material-design-iconic-font": "^2.2.0",
    "popper.js": "^1.16.0",
    "rails-erb-loader": "^5.5.2",
    "turbolinks": "^5.2.0"

*file: Gemfile. Node dependencies:*

Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
```gem 'rails', '~> 6.0.1'```

Use Puma as the app server
```gem 'puma', '~> 4.1'```

Use SCSS for stylesheets
```gem 'sass-rails', '~> 5'```
```gem 'sass-rails', '>= 6'```

A Sass-powered version of Bootstrap 3, ready to drop right into your Sass powered applications.
```gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'```
```gem 'font-awesome-sass', '~> 5.11', '>= 5.11.2'```
Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
```gem 'webpacker', '~> 4.0'```

Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
```gem 'turbolinks', '~> 5'```

Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
```gem 'jbuilder', '~> 4.2'```

This gem provides jQuery and the jQuery-ujs driver for your Rails 4+ application.
```gem 'jquery-rails', '~> 4.3', '>= 4.3.5'```

Windows does not include zoneinfo files, so bundle the tzinfo-data gem
```gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]```

Flexible authentication solution for Rails with Warden
```gem 'devise', '~> 4.2'```
 RailsAdmin is a Rails engine that provides an easy-to-use interface for managing your data.
```gem 'rails_admin', '~> 2.0'```
 A modern override of default bootstrap 3 rails_admin theme. It provides news colors, adjustments and a brand new tree view menu. Source: https://github.com/rollincode/rails_admin_theme
```gem 'rails_admin_rollincode', '~> 1.0'```

Gem that includes Highcharts (Interactive JavaScript charts for your web projects)
```gem 'highcharts-rails', '~> 6.0', '>= 6.0.3'```

Gem for consuming restful web services dead easy
```gem 'httparty', '~> 0.13.7'```

The CSV library provides a complete interface to CSV files and data. 
```gem 'csv', '~> 0.0.1'```

Reduces boot times through caching; required in config/boot.rb
```gem 'bootsnap', '>= 1.4.2', require: false```


```gem 'rspec-rails', '~> 3.9'```

**Gems that did NOT work out (error 500):**

JavaScript. Since injecting the template and its JS, the attempts to use JS files have been failing. Including the charts/GUI/logic. Responsiveness it there, but you cannot see it without js working properly.

Create beautiful JavaScript charts with one line of Ruby
```gem 'chartkick', '~> 3.3'```

 Agnostic pagination in plain ruby: it works with any framework, ORM and DB type, with all kinds of collections, even pre-paginated, scopes, Arrays, JSON data... and just whatever you can count. Easy to use and customize, very fast and very light. Pagy works, but does not let to customise it (visually).
```gem 'pagy', '~> 0.6.0'```
```gem 'jquery-datatables'```
```gem 'highcharts-rails', '~> 6.0', '>= 6.0.3'```

## Installation & Configuration


1. Clone, Fork or download the code package from the master branch https://github.com/AliceOwl/Bookshop
2. Install Ruby, Rails and gems mentioned above. You might also need to install Bundle, NPM, Yarn and Nokogiri.
3. In the code directory run the folllowing commands:

```yarn install --check-files```

```bundle update```

**for database initialisation & configuration**

```rails g scaffold book book_id:integer title:text author:text avg_rating:float isbn:string language_code:string num_page:integer rating_count:integer text_review_count:integer price:float ```

```rails db:migrate ```

```rake db:migrate```

```rake books:seed_books```

**supporting gems for application:**

```gem install highcharts-rails ```

```npm install bootstrap@3```

```yarn add highcharts ```

```yarn add jquery ```

```sudo apt-get install libpq-dev or sudo apt-get install postgresql```

```yarn add jspdf```

**Devise for User authentication**

In Gemfile:

Flexible authentication solution for Rails with Warden
```gem 'devise', '~> 4.2'```

This gem generates nicer default views styled with Bootstrap so you have a bit of a better starting point for your app.
```gem 'devise-bootstrapped', '~> 0.1.1'```

Commands: 

````bundle install```

Config/environments/development.rb

Line 3:

```config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }```


```rails g devise:views:bootstrapped```

Comment "This gem generates nicer default views styled with Bootstrap so you have a bit of a better starting point for your app.
gem 'devise-bootstrapped', '~> 0.1.1' "

And run ```bundle install``` again

 ```rails g devise User```

 ```rails db:migrate```

Blackbox testing showed that by default the layour was broken, user was unable to log out. This issue was solved as following:


Config/initializers/devise.rb:

 Line 258: ```config.sign_out_via = :get```


In views/partials/header or views/layouts/application:


```<a class="dropdown-item"<%= link_to 'Logout', destroy_user_session_path, method: :get %></a>```


## Deployment instructions

To run on the local/Development environment: ```rails server``` or ```rails s``` from the project directory

## Production Deployment: Heroku

_follow the instructions on the link below:_
https://devcenter.heroku.com/articles/getting-started-with-rails5

_in database.yml change production database adapter from sqlite3 to postgresql as mentioned in the file_

## Development Process:

The application was developed within a few weeks, adapting agile methodology to the limitations of a small project: Discover, Design, Develop, Deliver. Each stege (sprint) started with planning and ended with testing. 


**Sprint 1:	Dataset search and application design**

The users stories were designed and analysed. Non-Functional requirements were addeded. For example:
The dataset should contain a few linked tables, optimised for better data processing.
The system should be reliable: accurate results, predictable behaviour and fast processing of requests.
The application should be secure with OWASP and appropriate measures. 
The system should be tested with maximum coverage.
The system should be accessible and intuitive to use.

The dataaset was linked to two other tables (users and orders), based on the assumption that the images will come from live data and there is no need to store them. However, the missing values for e-commerce were seeded in. Rails is known for quick web development, but slow peformance. Taking into account Heroku limitation of 10000 records and tight project scedule, so the amount of total records was limited to around 4,500 values.

**Sprint 2.	Database Design and Development**

3 Linked tables (=models) were created with Rails Active Records: books, orders and users. SQLite3 was used for local DB development and Rails Active Record associations were used to link the models (tables) according to the database design principles (source: https://www.oreilly.com/library/view/access-database-design/0596002734/ch04.html). By the end of the development there were 6 tables in use: books (for opend data and as a resource to sell), users (for users with different priviliges), posts (to enable and test the basic user),  and also carts, orders and line_items for e-commerce.
The inital tables created and seeded on the local machine and Heriku were different from those at the end, as the structure of the project was altered throguhout the development process. 

**Sprint 3.	Application Development**

The application was developed with Ruby on Rails, using Model-View-COntroller (MVC) architecture pattern.
GitHub was used for version control, using projects-automated kanban chart for tasks monitoring.
Bootstrap templates and themes were implemented for GUI (for optimization of development within the deadline). The Cozastore Bootstrap template was adapted for modification: #sass syntax@import for optimization of website performance by compiling the CSS into one file that is served to the browser. 
>CSS has an import option that lets you split your CSS into smaller, more maintainable portions. The only drawback is that >each time you use @import in CSS it creates another HTTP request. Sass builds on top of the current CSS @import but instead >of requiring an HTTP request, Sass will take the file that you want to import and combine it with the file you're importing >into so you can serve a single CSS file to the web browser. Source: https://sass-lang.com/guide
The template integration process caused a number of bugs that have been continiously fixed throughout the project. One of those was related to javascript: the template js files had to remain untouched due to compatibility issues. 

Kickcharts were embedded for data visualization enhance the learning experience and provide the users with the analytical perspective of the data used.  

![](/readme_screenshots/about_charts.png)

Heroku for deployment of the application. Heroku required PostgreSQL as a database adapter for deployment, so it has been switching throughout the project. Kept crashign throughout the project as new configurations were added
![](_screenshots/dbadapters.png)


The main page (home) contains a grid of 16 random books from the open dataset and images(book covers) from the Open Library API, matched through ISBN. However, not all of them were matching, so some placeholders were left blank. Most of the potential solutions found included JS, which was not working properly with this app, so it was postpone till the main issue is debugged.

![](/readme_screenshots/home_content.png)


**Iteration 3.	Debugging and Documentation**

A lot of testing for this project was done as black-box testing, due to the anount of GUI to be tested, missing documentation (nothing for template, some gems got outdated, etc), so it was perfect for quick quality assurance, However, tergeting reliability and predictability, some unit tests have been performed, using rspec and automated tests. Last checked, there were 15/15 tests passed on rspec and 28/33. Example below:

![](/readme_screenshots/tests.png)

There were quite a few challenges and issues to face and debug, some of them were fixed, some of them partially fixed and the scope not covered/to be fixed was documented for future releases.The project has got through several debugging processed, as some of the gems and packages were causing conflicts, others were not responsive/not suitable for rails. A lot of them were related to JSON, gems, Bootstrap of Heroku. Some parts of the code were left unfinished and commented for future development. All sources are referenced in the code comments, including media files. More illustrations can be found in /readme_screenshots

## Security

The security in the app is focused on protection sensitive user's data and priviliged access to modify the data avaliable. The User's security is layered between unathorised (Guest), User and Admin. Guests can register to get an account. Regular authenticated users can access their account profiles, check/change their information, create posts, available to other authenticated users. Admin Users in addition to the drop-down user's menu have access to admin controls. where they can modify the data, orders, users, see statistics, and extract & downloaf the data needed. The different level of access is empowered bu gem Devise. In addition to this, it uses  bcrypt, which stores user's passwords im the database as a secure hashed value.                                                                                                                                                                                                                                                                                       

## Issues (partial implementation):

In this section the partially implemented features of the application are listed. These functionalities are currently under development stage, and are to be improved. Pull requests and issues raised will be much appreciated. 

The main issues/points to be coverd in the next release:

- Javascript has be fixed: most/all of the files are not recognized in the .erb files or vice versa.
- Google Books API to be implemented (for reading preview)
- Stories section to be replaced by live data 
- A Method to replace mismatching ISBN image holders from live data with a default image is left for future development.
- User posts and profile functionalities have to be altered. 
- Enable more functioning buttons (at the moment the cart can bee accessed only via "add to cart" button in shop (nav bar)


**Future potential:**

This project can be used as a starting point for further e-commerce enhancement or as a challenge to improve the existing one. This user-friendly, open-source project may help other developers to pick up the existing material as a base for further development and modification, and provide regular users/admins with a e-bookshop that they enjoy to spend time on.





