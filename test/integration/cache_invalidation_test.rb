require 'test_helper'

class CacheInvalidationTest < ActionDispatch::IntegrationTest
  self.test_order = :alpha
  mattr_reader(:output_times) { Hash.new { |h,k| h[k] = [] } }

  setup do
    ActionController::Base.perform_caching = true
    ActionView::PartialRenderer.collection_cache.logger = nil
    ActiveRecord::Base.logger = nil
    File.truncate('log/test.log', 0)
  end

  teardown do
    File.readlines('log/test.log').each do |l|
      if l =~ /Started GET.+limit=(\d+)/
        @current_limit = $1
      elsif l =~ /Rendered notifications\/index.html.erb within layouts\/application \(([\d\.]+)ms\)/
        output_times[@current_limit] << $1
      end
    end
    puts output_times
  end

  [10, 20, 30, 50, 70, 100].each do |limit|
    test "invalidation #{limit}" do
      create_notifications limit
      get notifications_path(limit: limit) # warmup
      get notifications_path(limit: limit)
    end
  end

  private
    def create_notifications(limit)
      limit.times do |i|
        Notification.create! name: 'Watch Chunk it out', body: 'Dang it ' * i
      end
    end
end
