=begin
In this challenge, you are going to make a method that takes an array of names 
(You'll want to get the list from your Cohort page in Socrates) 
and outputs a list of accountability groups for three different units. 
You should try to get everyone into an accountability group of 4, 
but it's your decision how to deal with cohorts not easily divisible by four.
You will also not have any tests for this challenge, so it's your job to create them. 
Read the document on Writing Driver Test Code code with Ruby. 
You should write tests with expectations that return true if the code is working 
and false if it is not.

You will want to consider:

Are there built-in methods to do this in Ruby?
Will you try to avoid putting the same people together more than once?
If I run this program three times in a row, will the program give me three different outputs? 
Is that good or bad?
Should it remember past outputs or not?
=end



=begin
Basic method:
method takes an array
counts elements in the array
Divides count by 4 
	if divisible by 4, assigns 4 to a cohort
	else not divisible by 4, assigns as many groups of 4 to cohort then splits remaining between cohorts
		So, if there are 30 members, you would get 5 groups of 4 and 2 groups of 5 (not 7 groups of 4 and 1 group of 2)
Cohorts are new numbered hashes
things to try
	.sample(4)
	.group_by
	.sort_by
	.map

Advanced additions:
method takes 2nd argument with number value of units
method attempts to assign members with different members for each unit, if possible
=end

dbc_names = ["D. Kevin Kang", "Adam Dziuk", "Aki Suzuki", "Adam Ryssdal", "Dominick Oddo", "Eoin McMillan", "Allison Wong", "Andra Lally", "Chris Aubuchon", "Hunter Chapman", "Jon Pabico", "Christiane Kammeri", "Clark Hinchcliff", "Devin Johnson", "Parjam Davoody", "C.J. Jameson", "Sebastian Belmar", "Eiko Seino", "Samuel Davis", "Jacob Persing", "Anup Pradhan", "Yuzu Saijo", "Shawn Seibert", "William Bushyhead"]

def grouping(arr)
	member_num = arr.count	
		if member_num / 4
			arr.group_by {|i| i/4}
		else arr.group_by {|i| i%4}
		end
	end

grouping(dbc_names)










