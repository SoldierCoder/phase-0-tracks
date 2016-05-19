# given: a spy's real name
# when: we have the spy's first and last name
# then we will swap the first and last name using split on spaces

# given swapped names (last and first) 
# when they are elements in an array
# then we will join them back together using join

# given one joined string of last and first names separated by a space
# when we want to encode the string
#   then we will:
#     set up one array: all_letters (a-z)
#     derive an array: only_consonants = all_letters - 'aeiou' 
#     derive  an array: only_vowels = all_letters - only_consonants
#   then with the string to be encoded we will
#     if the letter is a vowel we will 
#       change it to the next vowel
#     else if  a consonant we will
#       change it to the next consonant
#     else 
#       the letter is punctuation, leave it alone

def is_vowel?(letter, vowels)
   vowels.index(letter).nil? ? false : true
end

def is_consonant? (letter, consonants)
    consonants.index(letter).nil?  ? false : true
end
def next_vowel(letter, vowels)
  idx = vowels.index(letter)
  letter = vowels[idx+1]
end
def next_consonant(letter, consonants)
  idx = consonants.index(letter)
  letter = consonants[idx+1]
end

def convert_name(name, vowels, consonants)
  old_name = name

  name = name.split(/\s+/).reverse
  name[0] = name[0] + " "
  name = name.join

  len = name.length
  for letter in 0...len do 
    if name[letter] == " "
      name[letter] = ' '
    elsif is_vowel?(name[letter], vowels)
      name[letter] = next_vowel(name[letter], vowels)
    else is_consonant?(name[letter], consonants)
      name[letter] = next_consonant(name[letter], consonants)
    end    
  end
  puts "#{old_name} is now named #{name}"

end

def driver()

  all_letters = "abcdefghijklmnopqrstuvwxyzbABCDEFGHIJKLMNOPQRSTUVWXYZB".chars
  vowels = "aeiouaAEIOUA".chars
  consonants  = all_letters - vowels
  name = ''
  while (name != 'quit') do 

    puts "Please enter your real full name (or 'quit' to exit):"
    name = gets.chomp
    if name.downcase != 'quit'
      convert_name(name, vowels, consonants)
    end
  end
 
 # name = "Felicia Torres"
end

driver
