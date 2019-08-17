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
    let(:stubbed_response) do
      { items: [
          {
            name: 'Repo Searcher',
            owner: { login: 'Albert Paul' },
            html_url: 'http://github.com/albertpaulp/repo-searcher'
          }
        ]
      }
    end
    before do
      allow_any_instance_of(
        Octokit::Client
      ).to receive(:search_repositories).and_return(stubbed_response)
    end
    context 'when string is passed in' do
      it 'return ok http status' do
        post '/results', keyword: 'test'

        expect(last_response).to be_ok
      end
    end
  end
end
