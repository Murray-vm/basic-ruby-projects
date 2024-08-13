dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, dictionary) 
  string_array = string.split(" ")

  dictionary.reduce(Hash.new(0)) do |result, dictionary_word|
    string_array.each do | word |
      if word.include?(dictionary_word)
        result[dictionary_word] += 1
      end
    end
    result
  end
  
  
end

puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)