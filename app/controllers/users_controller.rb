class UsersController < ApplicationController
  # DEVISE ACTION USED TO LOCKDOWN PAGES
  before_action :authenticate_user!

  def show
    @user = User.find( params[:id] ) 
  end

end