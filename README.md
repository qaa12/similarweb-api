# Similarweb

Simple ruby wrapper for SimilarWeb API 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'similarweb-api', :require => 'similarweb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install similarweb-api

## Configuration


```ruby 
Similarweb::Client.config.token = YOUR_API_KEY
```

or

```ruby
# In Rails, you could put this in config/initializers/similarweb.rb
Similarweb::Client.configure do |config|
  config.api_key = YOUR_API_KEY
  # optional parameters
  config.granularity = 'daily' # monthly/daily/weekly
  config.start_date = '2018-01'
  config.end_date = '2018-01'
  config.main_domain_only = false
end

```

## Usage
*All request are make with default params (current month value).*

#### Visits

	Similarweb::Client.visits('wtd.ru')

or with specific params

	Similarweb::Client.visits('wtd.ru', start_date: '2017-10', end_date: '2017-12', granulatity: 'daily')

#### Average visit duration

	Similarweb::Client.average_visit_duration('wtd.ru')

or with specific params

	Similarweb::Client.average_visit_duration('wtd.ru', start_date: '2017-10', end_date: '2017-12', granulatity: 'daily')

#### Pages per visit

	Similarweb::Client.pages_per_visit('wtd.ru')

or with specific params

	Similarweb::Client.pages_per_visit('wtd.ru', start_date: '2017-10', end_date: '2017-12', granulatity: 'daily')
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/similarweb-api.
