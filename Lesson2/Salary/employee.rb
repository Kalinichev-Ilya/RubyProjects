#Employee class, contains a name
#Because name parameter is for all employees
class Employee
	attr_reader :name

	def name=(name)
		if name ==""
			raise "Name can't be blank!"
		end
		@name = name
	end

	def initialize(name = "Anonymous")
		self.name = name
	end

	def print_name
		puts "Name: #{name}"
	end
end
