require('sinatra')
require('sinatra/reloader')
require('./lib/definition')
require('./lib/word')
also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

post('/new_word') do
  word = params.fetch('new_word')
  Word.new(word).save()
  @word = word
  erb(:success_word)
end



post('/new_definition') do
  definition = params.fetch('definition')
  @definition = Definition.new(definition)
  @definition.save()
  @word = Word.find(params.fetch('word_id').to_i())
  @word.add_definition(@definition)
  @new_def = definition
  erb(:success_definition)
end

get('/words/:id') do
  @word = Word.find(params.fetch('id').to_i())
  @definitions = []
  erb(:definition)
end
