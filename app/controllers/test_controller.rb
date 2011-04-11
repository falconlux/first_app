class TestController < ApplicationController
  def create
    @user= User.first
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def index
   @title="ggg"
  end

end
