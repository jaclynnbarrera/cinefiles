class SessionsController < ApplicationController
    def new
        # render the login form
    end

    def create
        if params[:username] == ENV['ADMIN_USERNAME'] && params[:password] == ENV['ADMIN_PASSWORD'];
            # successful auth
            session[:admin_authenticated] = true
            redirect_to admin_upload_path
        else
            # redirect not working -- why?
            # auth failed
            flash[:error] = 'Authentication failed'
            render :new
        end
    end

    def destroy
        session[:admin_authenticated] = nil
        redirect_to root_path
    end
end
