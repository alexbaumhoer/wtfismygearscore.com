# WTF is My Gear Score?

## Setup

First, install [Homebrew](http://brew.sh) or [Linuxbrew](http://linuxbrew.sh).

Then:

```
bin/setup
```

If you are using Windows this will not work and you are on your own. Good luck!

## Starting the app

First, make sure Postgres and Redis are running.

Then:

```
foreman start
```

and visit `http://127.0.0.1:3000`

## Running the tests

```
bin/rspec
bin/rake rubocop
```

## Development

See [CONTRIBUTING.md](https://gitlab.com/closedloops/wtfismygs-rails/blob/master/CONTRIBUTING.md)
