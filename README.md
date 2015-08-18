# God Forbid

God Forbid is a gem which protects your Rails applications by checking request headers and adding new response headers on each request. It's very easy to use and you no longer need SSL, God forbid! 

# How does it protect your app?

Its very easy!

It adds following headers to each response;

```

X-Security-Policy: God Forbid
X-Start-With: Bismillahirrahmanirrahim (In the name of Allah, the beneficent the merciful)

```

It also checks each request's same headers and if they don't match it raises `Not Secure` exception.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'god_forbid'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install god_forbid

## Usage

Add following line to your `ApplicationController`

```ruby
    include GodForbid
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/god_forbid/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
