class ProfilesController < ApplicationController
  def new
    @profile = Profile.new    
  end

  def create
    # User who is currently logged in 
    # this comes from the url
    @user = User.find( params[:user_id] )
    # Create profile link to user
    @profile = @user.build_profile( profile_params )
    if @profile.save 
      flash[:success] = "Profile Updated"
      redirect_to user_path( params[:user_id] )
    else
      render action: :new
    end
  end

  def edit
    @user = User.find( params[:user_id] )
    @profile = @user.profile
  end

  private
  # WHITELISTING THE FORM SO HACKER CANT ADD FORM FIELD
  def profile_params
    params.require(:profile).permit(:avatar, :first_name, :last_name, :job_title, :phone_number, :description) 
  end
end
