require('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('.all') do
    it('is empty at first') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the input to the array') do
      test_word = Word.new("kitten")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it('clears out the array') do
      test_word = Word.new("puppy")
      test_word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns a word by its id number') do
      test_word = Word.new("house")
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('finds a word based on its assigned id') do
      test_word = Word.new("windows")
      test_word.save()
      test_word2 = Word.new("apple")
      test_word2.save()
      expect(Word.find(1)).to(eq(test_word))
      expect(Word.find(2)).to(eq(test_word2))
    end
  end

  describe('#definition_list') do
    it('initially returns an empty array of words in dictionary') do
      test_word = Word.new("coffee")
      expect(test_word.definition_list()).to(eq([]))
    end
  end

  describe('#word') do
    it('returns the word of an array entry') do
      test_word = Word.new("pencil")
      expect(test_word.word()).to(eq("pencil"))
    end
  end

  describe('#add_definition') do
    it('adds a definition to a word') do
      test_word = Word.new("chicken")
      test_definition = Definition.new("a bird that lays eggs")
      test_word.add_definition(test_definition)
      expect(test_word.definition_list()).to(eq([test_definition]))
    end
  end

end

describe(Definition) do
  before() do
    Definition.clear()
  end
  
  describe('.all') do
    it('will return an empty array at first') do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('will save a definition to the array') do
      test_definition = Definition.new("a small animal")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe('.clear') do
    it('will clear out the definitions array') do
      test_definition = Definition.new("a writing utensil")
      test_definition.save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns a definition by its id number') do
      test_definition = Definition.new("a place families live")
      expect(test_definition.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('finds a definition based on its assigned id') do
      test_definition = Definition.new("things we look out of")
      test_definition.save()
      test_definition2 = Definition.new("a round red fruit")
      test_definition2.save()
      expect(Definition.find(1)).to(eq(test_definition))
      expect(Definition.find(2)).to(eq(test_definition2))
    end
  end

end
