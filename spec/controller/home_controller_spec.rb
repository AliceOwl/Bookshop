require 'rails_helper'
require 'spec_helper'

RSpec.describe HomeController, type: :controller do
  describe "GET #index" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /home/index " do
    expect(:get => "/home/index").to route_to(:controller => "home", :action => "index")
end
end
describe "GET #product" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /home/product " do
    expect(:get => "/home/product").to route_to(:controller => "home","action"=>"product")
end
end
describe "GET #productdetail" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /home " do
    expect(:get => "/home/productdetail").to route_to("controller"=>"home", "action"=>"productdetail")
end
end

end