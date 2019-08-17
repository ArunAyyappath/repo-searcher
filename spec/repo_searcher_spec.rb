require 'spec_helper'
require './repo_searcher'

RSpec.describe RepoSearcher do
  describe 'GET /' do
    it 'return ok http status' do
      get '/'

      expect(last_response).to be_ok
    end
  end

  describe 'POST /results' do
    context 'when string is passed in' do
      it 'return ok http status' do
        get '/results', term: 'test'

        expect(last_response).to be_ok
      end
    end
  end
end
