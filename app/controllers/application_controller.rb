class ApplicationController < ActionController::API

    # before_action :authorized
    # helper_method :login_user, :current_user, :logged_in?

    def login_user(user)
        session[:user_id] = user.id
    end
 
    def current_user
        User.find_by(id:session[:user_id])
    end

    def logged_in?
        !!current_user
    end

    # def authorized
    #     unless logged_in?
    #         flash[:notice] = "You must be logged in to see this page"
    #         redirect_to login_path
    #     end
    # end
end