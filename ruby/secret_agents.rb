# encrypt : we will find the length of an accepted string
#   iterate each letter of the string
#       increment each letter by one
def encrypt(plaintext)   
  l = plaintext.length
  for i in 0...l do 
    if plaintext[i] == "z"
      plaintext[i] = "a"
    elsif (plaintext[i] != ' ')
      letter = plaintext[i]
      letter = letter.next
      plaintext[i] = letter
    end
  end
  plaintext
end
# given a string to decrypt, we will use an variable with all the letters of the alphabet in order, to find 
# the index of a letter in the decrpyt string and decrement that index to find the letter that should be 
#  substituted in the decrypt string
def decrypt(encipher)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  l = encipher.length
  for i in 0...l do 
    if encipher[i] == "a"
      encipher[i] = "z"
    elsif (encipher[i] != " ")
      letter = encipher[i]
      letter = alpha.index(letter)
      letter = letter - 1
      encipher[i] = alpha[letter]
    end
  end
  encipher
end


def test_it
  puts encrypt("abc")
  puts(encrypt("zed")) 
  puts(decrypt("bcd"))
  puts(decrypt("afe"))
end


def driver

 #test_it
 #puts decrypt(encrypt("swordfish")) # this works because the return value of encrypt becomes the input for decrypt

  puts "Would you like to encrypt(1) or decrypt(2)?"

  choice = gets.chomp.to_i
  puts "choice is #{choice}"

  puts "enter your password"
  password = gets.chomp

  if choice == 1
    password = encrypt(password)   
  else choice == 2
    password = decrypt(password)
  end

  puts "your password is #{password}" 
end

driver
