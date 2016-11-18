require('sinatra')
require('sinatra/reloader')
require('./lib/count')
require('./lib/highlight')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/count_words') do
  @display_text = params.fetch('text').highlight(params.fetch('search_word'))
  @search_word = params.fetch('search_word')
  @count = (params.fetch('text')).count(params.fetch('search_word'))
  erb(:result)
end
