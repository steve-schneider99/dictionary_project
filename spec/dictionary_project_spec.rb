require('rspec')
require('word')
require('definition')

describe(Word) do
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
    it('returns a definition by its id number') do
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
end

describe(Definition) do
  describe()
end

end
