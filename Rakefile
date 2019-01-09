# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

if defined? RSpec
    Rake::Task[:spec].clear
    RSpec::Core::RakeTask.new(:spec) do |t|
      t.verbose = false
    end
  end

  if %w[development test].include? Rails.env
    require 'rubocop/rake_task'
    RuboCop::RakeTask.new(:rubocop) do |task|
      task.formatters = ['fuubar']
      task.options    = ['--no-color']
    end

    desc 'runs RubyCritic'
    task :rubycritic do
      sh 'bundle exec rubycritic app config/initializers lib spec \
        --minimum-score 90 --format console --no-browser'
    end

    desc 'runs Breakeman for security checks'
    task :brakeman do
      sh "bundle exec brakeman \
        --run-all-checks --rails5 --format text"
    end

    desc 'runs Bundler audit for critical security updates'
    task :bundle_audit do
      sh 'bundle exec bundle-audit update && bundle exec bundle-audit check'
    end

    namespace :ci do
      desc 'runs all CI tasks'
      task all: %i[rubocop rubycritic brakeman bundle_audit]
    end

    desc 'run rubocop, spec'
    task default: %i[ci:all spec]

    namespace :test do
      desc 'run rubocop, spec'
      task all: %i[ci:all spec]
    end
  end
