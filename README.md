[![Codeship Status](https://codeship.com/projects/4730d8a0-d48e-0132-258f-623d5159f317/status?branch=master)](https://codeship.com/projects/77818) [![Code Climate](https://codeclimate.com/github/rubyonrails-ch/ror_ch/badges/gpa.svg)](https://codeclimate.com/github/rubyonrails-ch/ror_ch) [![Test Coverage](https://codeclimate.com/github/rubyonrails-ch/ror_ch/badges/coverage.svg)](https://codeclimate.com/github/rubyonrails-ch/ror_ch/coverage)


Very simple rails app for the Swiss Rails usergroup to coexist with our meetup.com group.

## Getting started

### Configure the environment

Create a configuration file for your local environment and configure `meetup_api_key` to use your own [Meetup API key](https://secure.meetup.com/meetup_api/key/). Create your own secrets.yml file with.

`cp env.example .env`

Paste the Meetup API key in the .env file. The file should now look something like this:

```
MEETUP_API_KEY: 253116536670112a7855465923462b0a

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

### Troubleshooting

In case you changed the secrets.yml with your API key and the above command didn't work (for example it returns `unauthorized`), try restarting spring.

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

### Import production data

```bundle exec cap production db:pull```

## Ecosystem

Request access to these services by contacting one of the maintainers.

* Hosting: https://ungleich.ch
* Exception tracking: https://rollbar.com
* Continuous integration: https://codeship.com
* Code quality / coverage: https://codeclimate.com

## Inspiration

* http://techup.ch/
* http://hamburg.onruby.de/
* http://ruvetia.org/
* http://www.arduino.cc/en/Main/Donate
