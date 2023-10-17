# frozen_string_literal: true

# The SessionsController handles user authentication and login sessions.
# It provides actions for user login, logout, and session management.
class SessionsController < ApplicationController
  def new
    # render the login form
  end

  def create
    if admin_credentials_valid?
      session[:admin_authenticated] = true
      redirect_to admin_upload_path
    else
      flash[:error] = 'Incorrect login, please try again'

      redirect_to login_path
    end
  end

  def destroy
    session[:admin_authenticated] = nil
    redirect_to root_path
  end

  private

  def admin_credentials_valid?
    params[:username] == ENV['ADMIN_USERNAME'] && params[:password] == ENV['ADMIN_PASSWORD']
  end
end
