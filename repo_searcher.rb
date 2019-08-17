require 'sinatra'
require 'octokit'
require 'yaml'
require './lib/github_searcher'

class RepoSearcher < Sinatra::Base
  get '/' do
    erb :search_layout
  end

  post '/results' do
    @search_term = params[:keyword]
    @results = GithubSearcher.new(keyword: @search_term).search

    erb :results, layout: :search_layout
  end
end
