# SocStats Web App

![](_screenshots/landing.png)


## ABOUT THE PROJECT:

**The project is avaliable via the link: https://serene-river-41980.herokuapp.com/**
*Bookshelf project was developed by the author as a part of MSc Information Technology course as a prototype of a bigger e-commerce website in order to demonstrate different IT skills of the student, technology and its potential implementation. The idea was inspired by the dataset found in Kaggle: to gather a list of good books in one place, where the data is complemented by the images (live data) and  will be regularly updated from its sources and provide the users with free data visualization, analytical and e-commerce tools with options to download the selected results.The aim of the current project is to demonstrate a scope of such application as a demo prototype for the future development. 

## The Context and DataSet Source:

>**The Good Read Dataset** 
This dataset was taken from the open-data source. The original document can be downloaded following this link: https://www.kaggle.com/jealousleopard/goodreadsbooks

This idea of this project if a welcoming e-bookshop, where the users feel comfortable and are willing to stay for long. In addition to the e-commerce functionality, the following features have been added: contact page for feedback, Stories page to attract more users to reading, About page with the details about the project, the dataset presented and graphs (currently not displaying). For Usability, in addition to open data source, live data has been linked in a form of bookcovers to illustrate the users what products they should expect. However, not all ISBN codes in the dataset  are matching the image library, provided by Open Library Covers API (https://openlibrary.org/dev/docs/api/covers). Another initiative was to embed the reader using Google Books API https://developers.google.com/books/docs/v1/getting_started, but the constrains (paid account and mismatching ISBN) postponed this idea for future releases. 

In addition to that, Users are enabled to sign up/login/ to get their personal accounts and each user can perform CRUD (Create, Read, Update, Delete) operations with their accounts. Users also have notifications and alers on their actions; each user can access their profile, settings, notes (enabling them to CRUD posts - a useful feature to create a shopping/reading list or leave themselves/others a memo). Admin Users have an additional menu item in drop-down: Admin Controls, wehre they can monitor the statistics about the website, users, orders, purchases, etc. and extract the data in the format needed. 

Admin Account: "Admin"
Password: "password"

User Account: "User"
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

The application was developed within a few weeks, adapting agile methodology to the limitations of a small project. 


**Sprint1:	Dataset search and application design**

The users stories were designed and analysed. Non-Functional requirements were addeded. For example:
The dataset should contain a few linked tables, optimised for better data processing.
The system should be reliable: accurate results, predictable behaviour and fast processing of requests.
The application should be secure with OWASP and appropriate measures. 
The system should be tested with maximum coverage.
The system should be accessible and intuitive to use.

The dataaset was linked to two other tables (users and orders), based on the assumption that the images will come from live data and there is no need to store them. However, the missing values for e-commerce were seeded in. Rails is known for quick web development, but slow peformance. Taking into account Heroku limitation of 10000 records and tight project scedule, so the amount of total records was limited to around 4,500 values.

**Iteration 2.	Database Design and Development**

3 Linked tables (=models) were created with Rails Active Records: books, orders and users. SQLite3 was used for local DB development and Rails Active Record associations were used to link the models (tables) according to the database design principles (source: https://www.oreilly.com/library/view/access-database-design/0596002734/ch04.html)
DB scaffolding turned out to be challenging initially there were 123 columns which were later cut down to 30 (top-level categories). Linking two different dataset was a madatory task to minimise parent-child tables attributes/data conflicts while seeding the data from two datasets.

**Iteration 3.	Application Development**

The application was developed with Ruby on Rails, using Model-View-COntroller (MVC) architecture pattern.
GitHub was used for version control, using projects-automated kanban chart for tasks monitoring.
Bootstrap templates and themes were implemented for GUI (for optimization of development within the deadline). The Grayscale Bootstrap template was adapted for modification: #sass syntax@import for optimization of website performance by compiling the CSS into one file that is served to the browser. 
>CSS has an import option that lets you split your CSS into smaller, more maintainable portions. The only drawback is that >each time you use @import in CSS it creates another HTTP request. Sass builds on top of the current CSS @import but instead >of requiring an HTTP request, Sass will take the file that you want to import and combine it with the file you're importing >into so you can serve a single CSS file to the web browser. Source: https://sass-lang.com/guide
The template integration process caused a number of bugs that have been continiously fixed throughout the project.

DataWrapper, Amcharts and Highcharts were embedded for data visualization enhance the learning experience and build up on it in future development. 

![](_screenshots/map.png)

Heroku for deployment of the application. Heroku required PostgreSQL as a database adapter for deployment, so it has been switching throughout the project. Kept crashign throughout the project as new configurations were added
![](_screenshots/config_yml.png)


Another controller/view was generated for analysis because it is connected to all the models.
To retrieve live data, used HTTParty gem to get the response from the guardian api. The response is parsed into json format to import the data based on the hash and key values. The team has also attempted to retrieve the data from http://hdr.undp.org/en using AJAX, JSON and API keys, but the process was stgnated in bugs, so The Guardian was chosen to retrieve the data from instead for the task completion, all other attepmts were commented/cut for further development.


![](_screenshots/livedata.png)


**Iteration 3.	Debugging and Documentation**

The project task did not require testing, so only black box testing was implemented for quality assurance. The project has got through several debugging processed, as some of the gems and packages were causing conflicts, others were not responsive/not suitable for rails. A lot of them were related to JSON, gems, Bootstrap of Heroku. Some parts of the code were left unfinished and commented for future development. All sources are referenced in the code comments, including media files. 

SocStats was designed as a fat client application due to the advanced GUI interface, low server requirements, better multimedia performance: one of the goals was to make the data access and analysis easier for regular users, so responsiveness of the application and its high performance were prioritised. 



## Issues (partial implementation):

In this section the partially implemented features of the application are listed. These functionalities are currently under development stage, and are to be improved. Pull requests and issues raised will be much appreciated. 

* http://socstats-spices.herokuapp.com/  - for proper displaying the link has to be strictly http, NOT https: this project does not have ssl licence yet, so in the secure browsing regime some items will not display as expected
* The download of dataset is avaliable only in JSON format for now. 
* The detailed highcharts per country are availabe via country links in the table:

![](_screenshots/highcharts.png)
However, at the moment the highcharts display disappears on refresh and a user has to go back to reload it again.
* Used Helper methods to retrieve the data from the models, due to unsolvable issues, we migrated to ActiveRecord methods and queries 
* Download the entire data to json format. Click on download, redirects to page with json object and download option available only on reload the page. - future development
* Exception handling 
>(a special kind of object, an instance of the class Exception or a descendant of that class that represents some kind of >exceptional condition; it indicates that something has gone wrong. When this occurs, an exception is raised (or thrown).) 
was partially implemented

- Javascript has be fixed: most/all of the files are not recognized in the .erb files. 
- Charts are not displaying properly.
- Cart is not functioning properly.
- Heroku deploy must
- Google Books API to be implemented (for reading preview)
- Stories section to be replaced by ds
- Live Data works only where ISBN is matching. 
- A Method to replace mismatching ISBN image holders from live data with a default image is left for future development.
- More enhanced test and debugging needs to be done.
- User posts and profile functionalities have to be altered. 


**Future potential:**

This project can be used as a starting point for further e-commerce enhancement or as a challenge to improve the existing one. This user-friendly, open-source project may help other developers to pick up the existing material as a base for further development and modification, and provide regular users/admins with a e-bookshop that they enjoy to spend time on.





