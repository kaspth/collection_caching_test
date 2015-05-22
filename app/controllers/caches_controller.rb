class CachesController < ApplicationController
  def show
    ActionController::Base.perform_caching = !ActionController::Base.perform_caching

    redirect_to :root
  end
end
