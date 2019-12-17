require 'rails_helper'
require 'spec_helper'

RSpec.describe BooksController, type: :controller do
  describe "GET #index" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /books " do
    expect(:get => "/books").to route_to(:controller => "books", :action => "index")
end
end
describe "GET #edit" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /books/edit " do
    expect(:get => "/books/edit").to route_to(:controller => "books","action"=>"show", "id"=>"edit")
end
end
describe "GET #update" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /books " do
    expect(:get => "/books/update").to route_to("controller"=>"books", "action"=>"show", "id"=>"update")
end
end
describe "GET #destroy" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /carts " do
    expect(:get => "/books/destroy").to route_to("controller"=>"books", "action"=>"show", "id"=>"destroy")
end
end

end