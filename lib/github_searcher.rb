class GithubSearcher
  attr_reader :keyword

  def initialize(keyword:)
    @keyword = keyword
  end

  def search
    client.search_repositories(keyword)
  end

  private

  def client
    @client ||= Octokit::Client.new(access_token: token)
  end

  def token
    ENV['GH_ACCESS_TOKEN']
  end
end
