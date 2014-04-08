def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") #.split splits string into an array with each character being an element; .downcase removes upper-case punctuation to make the string uniform
  decoded_sentence = [] # creates empty array
  alphabet = ('a'..'z').to_a + ('a'..'z').to_a
  cipher=Hash[alphabet.collect {|i| [alphabet[alphabet.index(i) + 4], i]}]
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




# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true


# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

 