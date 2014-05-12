# Cantina::Client

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'cantina-client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cantina-client

## Usage

Configure Devise to use this strategy:

Devise.setup do |config|
  config.omniauth :cantina_client, 'APP_ID', 'SECRET'
end

Update the User model with a migration:

  $ rails generate cantina_client

## Contributing

1. Fork it ( http://github.com/johankok/cantina-client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
