# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code
# Are there any more methods needed in this class?
class Drawer
	
	attr_reader :contents #@contents is read only
	
	def initialize #Initializes with empty open drawer
		@contents = [] 
		@open = true 
	end

	def open #opens drawer
		@open = true
		puts "The drawer is open."
	end

	def close #closes drawer
		@open = false
		puts "The drawer is closed."
	end 

	def add_item(item) #adds item to drawer
		unless @open == true
			raise "You must open the drawer before adding silverware."
		end
		#unless clean == true
		#	raise "You wouldn't want to put dirty silverware in the drawer, would you?"
		#end
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing?: removes last element in @contents array 
		@contents.delete(item)
		puts "You removed #{item} from the drawer."
	end

	def dump  # what should this method return?: should return @contents = []
		@contents.each {|x| x.delete}
		puts "Your drawer is empty."
	end

	def view_contents #this should return all contents in the drawer
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end
# Are there any more methods needed in this class?
class Silverware
	
	attr_reader :type #:type is read only

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		@clean = true
	end
end

knife1 = Silverware.new("knife") #ok

silverware_drawer = Drawer.new #ok
silverware_drawer.add_item(knife1) #added argument (item)
silverware_drawer.add_item(Silverware.new("spoon")) #ok
silverware_drawer.add_item(Silverware.new("fork")) #ok
silverware_drawer.view_contents #broken

silverware_drawer.remove_item #broken
silverware_drawer.view_contents #broken
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife) #ok

silverware_drawer.view_contents #broken

removed_knife = silverware_drawer.remove_item(sharp_knife) #check
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? @contents = []


fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 