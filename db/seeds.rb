#require '/Users/apprentice/Dropbox/DBC-Chicago/Nighthawks/Josh/Phase2/JoshAndNickCores/anagram_server/app/words.txt'

dictionary = File.open('/usr/share/dict/words')

dictionary.each_line do |word| 
  Word.create!( name: word.chomp, anagram_key: word.chomp.chars.sort.join )
end

