require('sinatra')
require('sinatra/reloader')
require('./lib/word_count.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  @word_count = params.fetch('sentence').word_count(params.fetch('target'))
  @word = params.fetch('target')
  erb(:word_count)
end
