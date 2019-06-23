require 'simplecov'
require 'coveralls'

SimpleCov.start 'rails' do
  add_filter '/bin/'
  add_filter '/db/'
  add_filter '/app/channels/'
  add_filter '/app/uploaders/'
  add_filter '/test/' # for minitest
end

Coveralls.wear!

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def log_in_as(user, options = {})
    password    = options[:password]    || 'password'
    if integration_test?
      post login_path, session: { email:       user.email,
                                  password:    password}
    else
      session[:user_id] = user.id
    end
  end

  private

  # Returns true inside an integration test.
  def integration_test?
    defined?(post_via_redirect)
  end
end
