## Benchmark and samples for Rails 5's automatic collection caching

Behind the words of https://dev.firmafon.dk/blog/rails-5-much-faster-collection-rendering/

## Notable files

You'll see the benchmark code underlining the post's beginning graph in `test/integration/cache_invalidation_test.rb`. Yes, it's crazy, but so what?

Check out `notifications/_notification.html.erb` and `notifications/index.html.erb` in `app/views` for an example of a simple setup with automatic collection caching.

There's also the `config/initializers/cache_store.rb` which sets up logging for controllers. That'll output the generated cache keys and what templates are written and read from cache.
