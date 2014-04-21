# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing? Returning the characters, 'a' through 'z', into an array. 
# 2. How does the rotate method work? What does it work on? It rotates through alphabet by starting with the 4th character.  Essentially it turns 'alphabet' into 'cipher' with a 4 character difference in starting point.
# 3. What is `each_char` doing? each_char passes each character in a string to the block
# 4. What does `sample` do? returns a random character in the array 'spaces'
# 5. Are there any other methods you want to understand better? .zip: used in the context above, I think it's adding the modified alphabet as a new array within a hash
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse? This is much easier to read and has a lot less code, as .zip, .rotate weren't used, and there is only one if statement.
# 7. Is this good code? What makes it good? What makes it bad? It's good code because it's DRY, and it's easy to digest.  It took minimal web research to figure out the components that I didn't understand.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? No, because the spaces (' ') are random characters.
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")


# 5. Reflection 
=begin
This was a good follow-up challenge to show how code can be DRY when using enumerable methods,
instead of multiple if statements.
I realized I need to practice various methods and spend more time refactoring my code,
rather than moving on with minimal refactoring.  
=end

