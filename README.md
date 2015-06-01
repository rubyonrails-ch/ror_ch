[![Codeship Status](https://codeship.com/projects/4730d8a0-d48e-0132-258f-623d5159f317/status?branch=master)](https://codeship.com/projects/77818) [![Code Climate](https://codeclimate.com/github/rubyonrails-ch/ror_ch/badges/gpa.svg)](https://codeclimate.com/github/rubyonrails-ch/ror_ch) [![Test Coverage](https://codeclimate.com/github/rubyonrails-ch/ror_ch/badges/coverage.svg)](https://codeclimate.com/github/rubyonrails-ch/ror_ch/coverage)


Very simple rails app for the Swiss Rails usergroup to coexist with our meetup.com group.

## Getting started

### Configure the environment

Create a configuration file for your local environment and configure `meetup_api_key` to use your own [Meetup API key](https://secure.meetup.com/meetup_api/key/). Create your own secrets.yml file with:

`cp config/secrets.example.yml config/secrets.yml`

Paste the Meetup API key in the config/secrets.yml file. The file should now look something like this:

```
development:
  secret_key_base: 9abcd93923ajjanbe92392309as9093
  meetup_api_key: 302390efnaweuigh9832883eha8e8
  rollbar_access_token: 123

test:
  secret_key_base: abeccewie824982482989ds8973
```

### Install missing gems

Install the gems from the gemfile. Run

`bundle install`

or just `bundle` in the console to install the  gems for that project.

### Set up the database

To set up the database in the project run the command:

`rake db:setup`

in the console. This project runs on [postgresql](http://www.postgresql.org/) which you will need to install beforehead if you haven't.

### Import from meetup

Once configured with your meetup API and set up the database key you may import current meetups using

`rails r MeetupJob.new.perform`

### Run the server

start the rails server with

`bundle exec rails server`

alternatively you can run `rails s` as a shorthand for it. The server runs on port 3000 by default so you can access the project by typing [localhost:3000](http://localhost:3000) in your browser.

## Contribute

### Ideas

[Open a github issue](https://github.com/rubyonrails-ch/ror_ch/issues/new) with your idea so we can discuss it.

### Implementation

Please open a pull request with your changes. Have a look at [the issues](https://github.com/rubyonrails-ch/ror_ch/issues) to see what needs some love.

### Code style

```rubocop --auto-correct```

### Deploy

Send your ssh key to nico@panter.ch to get access to the servers. 

For staging server deploy use:

```bundle exec cap staging deploy```

For production server deploy use:

```bundle exec cap production deploy```

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
