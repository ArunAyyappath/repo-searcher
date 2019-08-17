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
    @client ||= Octokit::Client.new(access_token: access_token)
  end

  def access_token
    @access_token ||=
      YAML.load_file('./secrets.yml')['ACCESS_TOKEN']
  end
end
