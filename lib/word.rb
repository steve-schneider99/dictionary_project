class Word
@@words = []

  define_method(:initialize) do |word|
    @word = word
    @word_id = @@words.length().+(1)
    @definitions = []
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_method(:id) do
    @word_id
  end

  define_singleton_method(:find) do |identification|
    this_word = nil
    @@words.each() do |word|
      if word.id().eql?(identification.to_i())
        this_word = word
      end
    end
    this_word
  end

  define_method(:definition_list) do
    @definitions
  end

  define_method(:word) do
    @word
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end
end
