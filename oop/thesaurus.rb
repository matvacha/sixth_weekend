require 'rspec'
# Create a thesaurus application. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.
#
# And... test your functionality using RSpec!
class Thesaurus < Entry
  def words
    words = []
  end
end

class Entry
  def word
    words_array = []
    @word_hash = { :word => "", :synonym => "", :antonym => ""}
    words_array << word_hash
  end

  def add_synonym(synonym)
    @synonyms << synonym
  end

  def add_antonym(antonym)
    @antonyms << antonym
  end 
end