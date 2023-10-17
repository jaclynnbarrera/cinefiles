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
        params.require(:session).permit(:username, :password)
        return params[:session][:username] == ENV['ADMIN_USERNAME'] && params[:session][:password] == ENV['ADMIN_PASSWORD']
    end
end