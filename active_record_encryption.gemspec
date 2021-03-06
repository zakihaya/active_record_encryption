
# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_record_encryption/version'

Gem::Specification.new do |spec|
  spec.name          = 'active_record_encryption'
  spec.version       = ActiveRecordEncryption::VERSION
  spec.authors       = ['alpaca-tc']
  spec.email         = ['alpaca-tc@alpaca.tc']

  spec.summary       = 'Transparent ActiveRecord encryption'
  spec.description   = 'Provides transparent encryption for ActiveRecord. You can protect your data with any encryption algorithm you want.'
  spec.homepage      = 'https://github.com/alpaca-tc/active_record_encryption'
  spec.license       = 'MIT'

  spec.require_paths = ['lib']

  spec.files = %w[
    CHANGELOG.md
    README.md
    CODE_OF_CONDUCT.md
    LICENSE.txt
  ] + Dir['lib/**/*.rb']

  spec.add_dependency 'activerecord', '>= 5.0'

  spec.add_development_dependency 'appraisal'
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'mysql2', '< 0.5.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'sqlite3'
end
