class SessionsController < ApplicationController 
    def new 
    end

    def create 
        if session[:name].nil? || params[:name] == ""
            redirect_to login_path
        end
        if params[:name] != nil
            session[:name] = params[:name]
    end 
end 

    def destroy 
        if session[:name]
   session.delete :name
    end 
end

end