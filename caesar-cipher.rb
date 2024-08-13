def char_uppercase? (letter)
letter === letter.upcase
end


def shift_letter (letter, offset) 
  is_uppercase = char_uppercase?(letter)
  letter = letter.downcase
  ascii_value = letter.ord

  if ascii_value.between?(97, 122) #ascii numbers a-z 
    coded_value = ascii_value + offset
    coded_letter = coded_value < 123 ? coded_value.chr : (coded_value - 26).chr
    is_uppercase ? coded_letter.upcase : coded_letter 
  else
    letter
  end

end



def caesar_cipher (string, offset)
offset = offset % 26
string_array = string.split("");

coded_array = string_array.map do |letter| 
  shift_letter(letter, offset) 
end

coded_array.join()

end




puts caesar_cipher("What a string!", 31)



