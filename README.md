## Benchmark and samples for Rails 5's automatic collection caching

Behind the words of https://dev.firmafon.dk/blog/rails-5-much-faster-collection-rendering/

## Notable files

You'll see the benchmark code underlining the post's beginning graph in [`test/integration/cache_invalidation_test.rb`][integration]. Yes, it's crazy, but so what?

Check out [`notifications/_notification.html.erb`][notification] and [`notifications/index.html.erb`][index] for an example of a simple setup with automatic collection caching.

There's also the [`config/initializers/cache_store.rb`][cache_store] which sets up logging for controllers. That'll output the generated cache keys and what templates are written and read from cache.

[integration]: https://github.com/kaspth/collection_caching_test/blob/master/test/integration/cache_invalidation_test.rb
[notification]: https://github.com/kaspth/collection_caching_test/blob/master/app/views/notifications/_notification.html.erb
[index]: https://github.com/kaspth/collection_caching_test/blob/master/app/views/notifications/index.html.erb
[cache_store]: https://github.com/kaspth/collection_caching_test/blob/master/config/initializers/cache_store.rb
