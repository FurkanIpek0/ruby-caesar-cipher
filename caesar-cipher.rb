def caesar_cipher(str,times)
  word = ""
  str.chars.map do |char|
    if ("a".."z").include?(char) || ("A".."Z").include?(char)
      num_char = (char.ord + times)
      new_char = num_char.chr
      char = new_char
      unless ("a".."z").include?(new_char) || ("A".."Z").include?(new_char)
        num_char -= 26
        new_char = num_char.chr
        char = new_char
      end
    end
    word += char
  end
  word
end


puts caesar_cipher("What a string!", 5)