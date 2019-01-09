# Contentful Sync

A Rails app which uses Contentful sync API

## API Documentation

You can find Contentful API documentation [here](https://www.contentful.com/developers/docs/concepts/sync/).

## Prerequisites and System dependecies

- Docker - [Install](https://www.docker.com/get-started)
- Ruby - [Install](https://www.ruby-lang.org/en/documentation/installation/#homebrew)

### Installing

Ensure prerequisites installed, (following examples are valid for OS X, check previous section to see additional links to install prerequisites)

```bash
  $ brew cask install docker # needed for external dependencies, such as database
  $ brew install ruby
  $ gem install bundler
```

then,

```bash
  $ bundle install
```

## Configuration

Use environment variables to configure app. Necessary environment variables are listed as following:

- RAILS_MASTER_KEY
- RAILS_MAX_THREADS
- DATABASE_TIMEOUT
- DATABASE_URL
- DATABASE_USERNAME
- DATABASE_PASSWORD

For development, [dotEnv](https://github.com/bkeepers/dotenv) gem used, you can provide `.env` files.
See [gem](https://github.com/bkeepers/dotenv) for further information.

## Running the tests

Run tests with [RSpec](https://github.com/rspec/rspec-rails)

```bash
  $ docker-compose up
  $ bundle exec rspec
```

### And coding style tests, ensuring code quality

[RuboCop](https://github.com/rubocop-hq/rubocop) is being used to ensure code styles.

```bash
  $ rubocop
```

Also,

```bash
  $ rake ci:all
```

will run all continues integration tasks.

#### Local setup

To add pre-commit hooks:

```
$ ./script/setup_dev_environment.sh
```

##### Create and Seed Database

```bash
bundle exec rake db:create db:migrate db:seed
```

##### Run Server

```bash
bundle exec rails s
```

Or

```bash
make run
```

## Deployment

[Heroku](https://heroku.com/) is being used to deploy this app.

To deploy (ensure you are logged in)

```bash
  $ git push heroku master
```

## Built With

- [Rails](https://rubyonrails.org/) - The web framework used

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

## Authors

- **Kemal Akkoyun** - _Initial work_ - [kakkoyun](https://github.com/kakkoyun)

## License

This project is licensed under the GPL License - see the [LICENSE](LICENSE) file for details
