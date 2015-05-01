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


end
