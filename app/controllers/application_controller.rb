class ApplicationController < ActionController::Base
  protect_from_forgery

    def current_child
      child = Child.find(params[:id])
      session[:child_id] = child.id  
    end

end
