# U2.W4: Cipher Challenge


# I worked on this challenge [With Butler].



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.


=begin
def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") #.split splits string into an array with each character being an element; .downcase removes upper-case punctuation to make the string uniform
  decoded_sentence = [] # creates empty array
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this?  Use a loop over an array of the alphabet to automate this. 
            "f" => "b",   # Is a hash the best data structure for this problem? The hash sets the relationship in stone and takes a long time to write.  
            "g" => "c",   # What are the pros and cons of hashes? The pro is it's easy to understand and read. 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # It's looping over each element of input that's been downcased, split, and made in an array.
    found_match = false  # If it turns true, it breaks the loop and wont run, so the default must be false to run until a match is found.
    cipher.each_key do |y| # It's looping over each element of the hash: cipher.
      if x == y  # What is this comparing? This is comparing all characters from input with all key value characters in the hash: cipher.  Where is it getting x? It is getting x by iterating over each element in input. Where is it getting y? It is getting y by iterating over each key in cipher. What are those variables really? Letters in the alphabet 
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here? This breaks the if statement because it has gone through all of the alphabet.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # This checks for special non-alphabet characters and pushes a space into the array.
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # (0..9).to_a creates an array with numerical elements between 0 and 9. .include?(x) sees if an element in the array is equal to (x).
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # Returning original character if match not found.
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) # This uses regualr expressions to check for the presence of a number. "\d" stands for any digit. "+" stands for any number any amount of times.
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # This takes any number and divides by 100.
  end  
  return decoded_sentence # Returns decoded message as string with all numbers divided by 100.       
end
=end
<<<<<<< HEAD

# Your Refactored Solution
def north_korean_cipher(coded_message)
  
  input = coded_message.downcase.split("") #.split splits string into an array with each character being an element; .downcase removes upper-case punctuation to make the string uniform
  
  decoded_sentence = [] # creates empty array
  
  alphabet = ('a'..'z').to_a + ('a'..'z').to_a #adding a 2nd alphabet allows ciper to reach letters that would be missed otherwise.
  
  cipher=Hash[alphabet.collect {|i| [alphabet[alphabet.index(i) + 4], i]}]
  
=======
# Your Refactored Solution
def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") #.split splits string into an array with each character being an element; .downcase removes upper-case punctuation to make the string uniform
  decoded_sentence = [] # creates empty array
  alphabet = ('a'..'z').to_a + ('a'..'z').to_a
  cipher=Hash[alphabet.collect {|i| [alphabet[alphabet.index(i) + 4], i]}]
>>>>>>> FETCH_HEAD
  input.each do |x| # It's looping over each element of input that's been downcased, split, and made in an array.
    found_match = false  # If it turns true, it breaks the loop and wont run, so the default must be false to run until a match is found.
    cipher.each_key do |y| # It's looping over each element of the hash: cipher.
      if x == y  # What is this comparing? This is comparing all characters from input with all key value characters in the hash: cipher.  Where is it getting x? It is getting x by iterating over each element in input. Where is it getting y? It is getting y by iterating over each key in cipher. What are those variables really? Letters in the alphabet 
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here? This breaks the if statement because it has gone through all of the alphabet.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # This checks for special non-alphabet characters and pushes a space into the array.
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # (0..9).to_a creates an array with numerical elements between 0 and 9. .include?(x) sees if an element in the array is equal to (x).
        decoded_sentence << x
        found_match = true
        break
      end 
    end
<<<<<<< HEAD
    
=======
>>>>>>> FETCH_HEAD
    if not found_match  # Returning original character if match not found.
      decoded_sentence << x
    end
  end
<<<<<<< HEAD
  
=======
>>>>>>> FETCH_HEAD
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) # This uses regualr expressions to check for the presence of a number. "\d" stands for any digit. "+" stands for any number any amount of times.
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # This takes any number and divides by 100.
  end  
  return decoded_sentence # Returns decoded message as string with all numbers divided by 100.       
<<<<<<< HEAD

end
=======
end



>>>>>>> FETCH_HEAD

# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true

<<<<<<< HEAD
=======

>>>>>>> FETCH_HEAD
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection
=begin
Our solution was to break down each statement to identify its use before making any modifications.
We created cipher to equal two sets of the alphabet in order to reach characters that one alphabet range wouldn't allow.
The remaining code was commented on and indented appropriately.    
=end
 