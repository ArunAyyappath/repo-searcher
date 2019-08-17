# RepoSearcher
Simple Github Repo Searcher

## Setup

### Docker
- Add your github `access_token` to secrets.yml
- `docker build -t repo-searcher .`
- `docker run -p 80:9292 repo-searcher`
- Open `localhost` to use app.

### Manual
- Run `bundle install`
- Add your github `access_token` to secrets.yml
- `rackup`

## Test
- Run `bundle install`
- `rspec spec`

## Preview
![repo-search](https://i.imgur.com/QXDVAfQ.png)
