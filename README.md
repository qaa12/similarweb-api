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
```ruby
Similarweb::Client.visits('wtd.ru')
```
or with any params
```ruby
Similarweb::Client.visits('wtd.ru', start_date: '2017-10', end_date: '2017-12', granulatity: 'daily')
```
#### Other methods
```ruby
average_visit_duration
pages_per_visit
bounce_rate
```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/qaa12/similarweb-api.
