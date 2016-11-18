require('sinatra')
require('sinatra/reloader')
require('./lib/count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/count_words') do
  @search_word = params.fetch('search_word')
  @count = (params.fetch('text')).count(params.fetch('search_word'))
  erb(:result)
end
