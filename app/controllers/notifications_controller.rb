class NotificationsController < ApplicationController
  def index
    @notifications = Notification.limit(params[:limit] || 100)
  end

  def touch
    # This will bust all the cached notification partials because a record's
    # updated_at column is part of the cache key.
    # There wouldn't be much use for this in a real app, but it's helpful to see things working.
    # Besides cache bustin' makes me feel good!
    Notification.update_all updated_at: Time.now
  end
end
