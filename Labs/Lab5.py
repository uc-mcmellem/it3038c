#Take a word as input and count how many letters, how many vowels and how many consonants
word = input("Please enter the word you would like to count: ")
vowels = 0
consonants = 0

for letter in word:
    if(letter == 'a' or letter == 'A' 
        or letter == 'e' or letter == 'E' 
        or letter == 'i' or letter == 'I' 
        or letter == 'o' or letter == 'O' 
        or letter == 'u' or letter == 'U'):
            vowels = vowels + 1
    else:
        consonants = consonants + 1
print("The number of vowels is: ", vowels)
print("The number of consonants is: ", consonants)
