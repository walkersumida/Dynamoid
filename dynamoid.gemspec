# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dynamoid/version'

Gem::Specification.new do |spec|
  spec.name = 'dynamoid'
  spec.version = Dynamoid::VERSION

  # Keep in sync with README
  spec.authors = [
    'Josh Symonds',
    'Logan Bowers',
    'Craig Heneveld',
    'Anatha Kumaran',
    'Jason Dew',
    'Luis Arias',
    'Stefan Neculai',
    'Philip White',
    'Peeyush Kumar',
    'Sumanth Ravipati',
    'Pascal Corpet',
    'Brian Glusman',
    'Peter Boling',
    'Andrew Konchin'
  ]
  spec.email = ['peter.boling@gmail.com', 'brian@stellaservice.com', 'andry.konchin@gmail.com']

  spec.description = "Dynamoid is an ORM for Amazon's DynamoDB that supports offline development, associations, querying, and everything else you'd expect from an ActiveRecord-style replacement."
  spec.summary = "Dynamoid is an ORM for Amazon's DynamoDB"
  # Ignore not commited files
  spec.files = Dir['CHANGELOG.md', 'README.md', 'LICENSE.txt', 'lib/**/*'] & `git ls-files`.split("\n")
  spec.homepage = 'http://github.com/Dynamoid/dynamoid'
  spec.licenses = ['MIT']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'activemodel',      '>=4'
  spec.add_runtime_dependency 'aws-sdk-dynamodb', '~> 1.0'
  spec.add_runtime_dependency 'concurrent-ruby',  '>= 1.0'
  spec.add_runtime_dependency 'null-logger'

  spec.add_development_dependency 'appraisal',  '~> 2.2'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'coveralls',  '~> 0.8'
  spec.add_development_dependency 'pry',        '~> 0.12'
  spec.add_development_dependency 'rake',       '~> 13.0'
  spec.add_development_dependency 'rspec',      '~> 3.9'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'wwtd',       '~> 1.4'
  spec.add_development_dependency 'yard',       '~> 0.9'
end
