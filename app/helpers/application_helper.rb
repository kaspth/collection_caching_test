module ApplicationHelper
  def caching_status
    if ActionController::Base.perform_caching
      'Disable caching'
    else
      'Enable caching'
    end
  end
end
