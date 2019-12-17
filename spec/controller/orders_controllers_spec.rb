require 'rails_helper'
require 'spec_helper'

RSpec.describe OrdersController, type: :controller do
  describe "GET #index" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /orders " do
    expect(:get => "/orders").to route_to(:controller => "orders", :action => "index")
end
end
describe "GET #edit" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /orders/edit " do
    expect(:get => "/orders/edit").to route_to(:controller => "orders","action"=>"show", "id"=>"edit")
end
end
describe "GET #update" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /orders " do
    expect(:get => "/orders/update").to route_to("controller"=>"orders", "action"=>"show", "id"=>"update")
end
end
describe "GET #destroy" do
# https://relishapp.com/rspec/rspec-rails/v/3-8/docs/routing-specs/route-to-matcher 
it "routes  /carts " do
    expect(:get => "/orders/destroy").to route_to("controller"=>"orders", "action"=>"show", "id"=>"destroy")
end
end

end