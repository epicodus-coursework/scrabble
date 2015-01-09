require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')

# Set port for compatability with nitrous.io
configure :development do
  set :bind, '0.0.0.0'
  set :port, 3000
end

get('/') do
  erb(:form)
end

get('/results') do
  word = params.fetch('word')

  @word = word
  @total = word.scrabble_score()
  erb(:results)
end
