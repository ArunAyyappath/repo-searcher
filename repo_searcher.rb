require 'sinatra'
require 'octokit'

class RepoSearcher < Sinatra::Base
  get '/' do
    %q{
        <h1> Welcome to RepoSearcher </h1>
        <form method="post">
        Enter a search term: <input type="text" name="term" />
        <input type="submit" value="submit" />
        </form>
    }
  end
end
