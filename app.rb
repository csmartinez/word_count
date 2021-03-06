require ('sinatra')
require ('sinatra/reloader')
require ('./lib/word_count')

get('/') do
  erb(:index)
end

get('/results') do
  @word = params.fetch('word')
  @sentences = params.fetch('sentences')
  @outcome = @sentences.frequency(@word)
  erb(:results)
end
