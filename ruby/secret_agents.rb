"for encrypt, we will find the length of an accepted string
   iterate each letter of the string
       increment each letter by one"



def encrypt(plaintext)
  l = plaintext.length
  for i in 0...l do
    
    if plaintext[i] != ' '
      letter = plaintext[i]
      letter = letter.next
      plaintext[i] = letter
    end

  end
  plaintext
end

" given a string to decrypt, we will use an variable with all the letters of the alphabet in order, to find 
//  the index of a letter in the decrpyt string and decrement that index to find the letter that should be 
//  substituted in the decrypt string"

s = 'ed was here'
encrypt(s)
puts(s)
