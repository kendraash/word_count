require('sinatra')
require('sinatra/reloader')

get('/') do
  erb(:index)
end

get(/word) do
  @word = params.fetch('word').word_count()
  erb(:word)
end
