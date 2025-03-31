lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_social/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_social'
  s.version     = SpreeSocial.version
  s.summary     = 'Adds social network login services (OAuth) to Spree'
  s.description = s.summary
  s.required_ruby_version = '>= 2.1.0'

  s.author   = 'John Dyer'
  s.email    = 'jdyer@spreecommerce.com'
  s.homepage = 'http://www.spreecommerce.com'
  s.license  = 'BSD-3'

  s.files        = `git ls-files`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version =  '>= 3.1.0', '< 5.0'
  s.add_dependency 'deface', '~> 1.0'
  s.add_dependency 'omniauth-facebook'
  s.add_dependency 'omniauth-google-oauth2'
  s.add_dependency 'omniauth-twitter'
  s.add_dependency 'spree_auth_devise', '>= 3.1.0', '< 5.0'
  s.add_dependency 'spree_core', spree_version
  s.add_dependency 'spree_extension'

  s.add_development_dependency 'spree_dev_tools'
  s.add_development_dependency 'actionmailer'
  s.add_development_dependency 'actionpack'
  s.add_development_dependency 'sqlite3'
  s.metadata['rubygems_mfa_required'] = 'true'
end
