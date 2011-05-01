class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :fetch_children
  before_filter :session_child
  protected

  def fetch_children
    @children = Child.all  
  end

    def session_child
      if params[:child_id]
        session[:child_id] = params[:child_id]
      end
    end
end
