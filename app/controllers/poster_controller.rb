class PosterController < ApplicationController
  def index
    @chores = Chore.all
  end

end
