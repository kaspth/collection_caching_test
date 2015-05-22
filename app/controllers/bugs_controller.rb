class BugsController < ApplicationController
  def show
    @bunny = Bunny.first
  end
end
