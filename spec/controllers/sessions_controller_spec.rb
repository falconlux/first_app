require 'spec_helper'

describe SessionsController do
  render_views
  describe "GET 'new'" do
    it "should be successful" do
      get :new
      response.should be_success
    end
  end

    it "should have the right title" do
      get :show, :id => @user
      response.should have_selector("title", :content =>"Sign In")
    end
end
