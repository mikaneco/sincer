# Sincer
[![Gem Version](https://badge.fury.io/rb/sincer.svg)](https://rubygems.org/gems/sincer)
[![GitHub Actions CI](https://github.com/mikaneco/sincer/actions/workflows/main.yml/badge.svg)](https://github.com/mikaneco/sincer/actions/workflows/main.yml)

## Description
A gem providing a simple interface for getting how many minutes, hours, days, weeks, months, years have passed since or will pass until the specified date.

## Usage
```ruby
require 'sincer'

Sincer.rephrase('2021-01-01 00:00:00')
 # => "1 minute ago if it is 2021-01-01 00:01:00"
```

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add sincer

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install sincer

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sincer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/micaneco/sincer/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Sincer project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mikaneco/sincer/blob/main/CODE_OF_CONDUCT.md).
