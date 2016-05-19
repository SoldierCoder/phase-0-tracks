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

