# U2.W4: 3_commas_solution.rb


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
Define method 'separate_comma' with one argument (value) = to an intiger
	Split value into individual string characters and change to array
	Slice array by 3 and map to individual arrays
	Join sliced arrays with (",")
=end
# 3. Initial Solution




# 4. Refactored Solution
def separate_comma(value)
  reverse_value = value.to_s.chars.to_a.reverse
  split_array = reverse_value.each_slice(3).map(&:join)
  csv = split_array.join(",").reverse
end

# 1. DRIVER TESTS GO BELOW THIS LINE
p separate_comma(54385734953) == "54,385,734,953"
p separate_comma(0) == "0"


# 5. Reflection 
=begin
This challenge was harder than expected.  
My initial solution was returning commas in the wrong place (e.g. 222,432,21)
My solution was to reverse the order of the numbers, then re-reverse the order once the join(",") was implemented
I don't think this was the easiest solution, but it worked.
One thing I learned is I can use two methods together as shown above: .map(&:join), the first time I've done this.
=end


