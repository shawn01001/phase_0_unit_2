fence_lizards = ["Adam Dziuk", "Adam Ryssdal", "Aki Suzuki", 
                "Alison Wong", "Andra Lally", "Anup Pradhan",
                "CJ Jameson", "Christopher Aubuchon", "Clark Hinchcliff",
                "Devin A Johnson", "Dominick Oddo", "Dong Kevin Kang", 
                "Eiko Seino", "Eoin McMillan", "Hunter T. Chapman", 
                "Jacob Persing", "Jon Pabico", "Parjam Davoody",
                "Samuel Davis", "Sebastian Belmar", "Shawn Seibert",
                "William Bushyhead", "Yuzu Saijo", "Christiane Kammerl"]



# def unit_picker(names)
#   shuffled_names = names.shuffle
#   result = Hash.new([]) 
#   i = 1
#   while(i <= 6) do 
#   	 4.times do
# 	     result["#{"group_" + i.to_s}"] += ["#{shuffled_names.pop}"]
# 	 end
#     i += 1
#   end
#   result 
# end

# def  phase_picker(names,num_units=3)
#   final = Hash.new()
#   i = 1
#   while (i <= num_units) do
#     final["#{"unit_"+i.to_s+"_groups"}"] = unit_picker(names)
#     i += 1
#   end
#   final 
# end


# 4. Refactored Solution

def unit_picker(names)
   shuffled_names = names.shuffle
   result = Hash.new([]) 
   i = 1
   while(i <= 6) do 
   	 4.times { result["group_""#{i.to_s}"] += ["#{shuffled_names.pop}"] }
     i += 1
   end
   result 
end

def  phase_picker(names,num_units=3)
  final = {}
  i = 1
  while (i <= num_units) do
    final["unit_""#{i.to_s}""_groups"] = unit_picker(names)
    i += 1
  end
  final 
end

puts "#{unit_picker(fence_lizards)}"
puts "#{phase_picker(fence_lizards,num_units=3)}"
# 1. DRIVER TESTS GO BELOW THIS LINE


