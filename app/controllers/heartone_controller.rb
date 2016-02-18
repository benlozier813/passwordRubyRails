class HeartoneController < ApplicationController

def incorrect
  @user_name = params[:user_name].to_s
  @password = params[:password].to_s

  if @user_name.strip.empty? || @password.strip.empty?
    @emptyalert = flash.now[:alert] = "Please enter a user name and password"
  elsif @user_name == @password
    @matchingalert = flash.now[:alert] = "User name and password cannot be the same"
    redirect_to hearttwo_password_path
  elsif !@password.include? "!"
    redirect_to hearttwo_password_path
  else
    redirect_to correct_password_path

  end
end

end
