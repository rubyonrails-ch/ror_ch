[![Codeship Status](https://codeship.com/projects/4730d8a0-d48e-0132-258f-623d5159f317/status?branch=master)](https://codeship.com/projects/77818) [![Code Climate](https://codeclimate.com/github/rubyonrails-ch/ror_ch/badges/gpa.svg)](https://codeclimate.com/github/rubyonrails-ch/ror_ch) [![Test Coverage](https://codeclimate.com/github/rubyonrails-ch/ror_ch/badges/coverage.svg)](https://codeclimate.com/github/rubyonrails-ch/ror_ch/coverage)


Very simple rails app for the Swiss Rails usergroup to coexist with our meetup.com group.

## Getting started

### Configure environment

Create a configuration file for your local environment and configure `meetup_api_key` to use your own [Meetup API key](https://secure.meetup.com/meetup_api/key/)

```cp config/secrets.example.yml config/secrets.yml```

### Import from meetup

Once configured with your meetup API key you may import current meetups using

```rails r MeetupJob.new.perform```

## Contribute

### Ideas

[Open a github issue](https://github.com/rubyonrails-ch/ror_ch/issues/new) with your idea so we can discuss it.

### Implementation

Please open a pull request with your changes. Have a look at [the issues](https://github.com/rubyonrails-ch/ror_ch/issues) to see what needs some love.

### Code style

```rubocop --auto-correct```

## Ecosystem

Request access to these services by contacting one of the maintainers.

* Hosting: https://heroku.com
* Exception tracking: https://rollbar.com
* Continuous integration: https://codeship.com
* Code quality / coverage: https://codeclimate.com

## Inspiration

* http://techup.ch/
* http://hamburg.onruby.de/
* http://ruvetia.org/
* http://www.arduino.cc/en/Main/Donate
