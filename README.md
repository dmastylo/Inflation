# Inflation

This simple gem makes it easy to calculate how much different amounts of money
would be worth in certain years. Years from 1800 - 2012 are supported.

## Installation

Add this line to your application's Gemfile:

    gem 'inflation'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inflation

## Usage

```ruby
require 'inflation'

# Return the value (rounded to 2 decimal points)
1.from(1800).to(2012)

# Or, if you like more English sounding method chaining...
1.from_1800.to_2012

# Return true if the year is supported.
1840.year?
=> true

1784.year?
=> false
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
