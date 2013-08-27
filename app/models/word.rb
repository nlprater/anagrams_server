class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.gen_ana_res(input)
    ana_key = input.chars.sort.join
    matching_words = Word.where(anagram_key: ana_key)
    string = ""
    matching_words.each {|word| string << word.name + " "}
    string
  end
end


