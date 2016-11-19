require('sinatra')
require('sinatra/reloader')
require('./lib/count')
require('./lib/highlight')
require('./lib/count_exact')
require('./lib/highlight_exact')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/count_words') do
  search_type = params.fetch('scan')
  if search_type.==('sequence')
    @display_text = params.fetch('text').highlight(params.fetch('search_word'))
    @search_word = params.fetch('search_word')
    @count = (params.fetch('text')).count(params.fetch('search_word'))
  elsif search_type.==('exact')
    @display_text = params.fetch('text').highlight_exact(params.fetch('search_word'))
    @search_word = params.fetch('search_word')
    @count = (params.fetch('text')).count_exact(params.fetch('search_word'))
  end
  erb(:result)
end
