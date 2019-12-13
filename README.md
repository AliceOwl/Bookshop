# README

This README would normally document whatever steps are necessary to get the
application up and running.

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

yarn add bootstrap jquery popper.js
npm install material-design-iconic-font

gem install spree (uninstalled)

rake assets:precompile  



gem install httparty


Live data; openlibrary.org for book covers. 

Rate Limiting
The cover access by ids other than CoverID and OLID are rate-limited. Currently only 100 requests/IP are allowed for every 5 minutes.

If any IP tries to access more that the allowed limit, the service will return "403 Forbidden" status.

https://openlibrary.org/dev/docs/api/covers





Spring is a Rails application preloader that speeds up development by keeping your application running in the background. This means you that don't need to restart a server when you make changes. In RubyMine, Spring can be used to run Rails generators, tests, and Rake tasks.

In this case Spring was run to edit admin role permissions.

rails c

@user = User.first

@user.admin = true

ctrl + d to exit


To get the username form email:

app/models/user.rb:

within the User class create:


    def username
        return self.email.split('@')[0].capitalize
    end

and then call .user.username where needed. 
example form show.html.erb:
