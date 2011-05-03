class PagesController < ApplicationController
  def home
    @child = Child.find(session[:child_id])
  end

  def contact
  end

  def about
  end

  def help
  end

end
