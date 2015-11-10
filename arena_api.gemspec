$:.push File.expand_path('../lib', __FILE__)
require 'arena_api/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'arena_api'
  s.version     = ArenaApi::VERSION
  s.authors     = ['Web Team']
  s.email       = ['web@altamotors.co']
  s.homepage    = 'https://app.bom.com/2.9.9/static/webhelp/full/en_US/ApplicationHelp.htm#html/api_overview.html'
  s.summary     = 'Simple client for Arena PLM Rest API V1'
  s.license     = 'MIT'

  s.files = Dir['README.rdoc', 'lib/**/*']
  s.require_path = 'lib'
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rest-client', '~> 1.8.0'
  s.add_dependency 'virtus', '~> 1.0.5'
  s.add_dependency 'activeresource', '~> 4.0.0'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry'
end
