require 'sinatra'
require 'octokit'
require './lib/github_searcher'
require 'pry'

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
