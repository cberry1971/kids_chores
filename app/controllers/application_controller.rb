class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :fetch_children
  protected

  def fetch_children
    @children = Child.all  
  end

    def current_child
      child = Child.find(params[:id])
      session[:child_id] = child.id  
    end
end
