class Word < ActiveRecord::Base
  # Remember to create a migration!

  def self.is_anagram?(word1,word2)
    return word1.downcase.chars.sort == word2.downcase.chars.sort
  end

  def self.anagrams(word)
    array = []
    str = ""
    Word.where("length(word)= #{word.length}").each do |w|
      if is_anagram?(word, w.word) == true
        array.push(w)
      end
    end
    array.each_with_index do |value,index|
      str += "#{value.word} "
    end
    str
  end
end