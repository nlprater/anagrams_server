class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.gen_ana_res(input)
    self_ana_key = input.chars.sort.join
    matching_words = Word.where(anagram_key: self_ana_key)
    string = ""
    matching_words.each {|object| string << object.name + " "}
    string
    #matching_words.where(:name => ?)
  end
end


