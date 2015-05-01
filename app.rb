require('sinatra')
require('sinatra/reloader')
require('./lib/definition')
require('./lib/word')
also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

post('/definitions') do
  word = params.fetch('new_word')
  Word.new(word).save()
  @word = word
  erb(:definition)
end
