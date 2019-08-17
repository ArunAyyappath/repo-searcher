require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

$: << File.join(File.dirname(__FILE__), '..', 'lib')

module RSpecMixin
  include Rack::Test::Methods
  def app() RepoSearcher end
end

RSpec.configure { |c| c.include RSpecMixin }

