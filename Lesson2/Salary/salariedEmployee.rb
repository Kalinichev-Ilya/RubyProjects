#Salaried employees receive a fixed salary every two weeks
require_relative 'employee'

class SalariedEmployee < Employee
	attr_reader :salary

	def salary=(salary)
		if salary < 0
			raise "A salary of #{salary} isn't valid!"
		end
		@salary = salary
	end

	def initialize(name = "Anonymous", salary = 0.0)
		super(name)
		self.salary = salary
	end

	def print_pay_stub
		print_name
		pay_for_period = (salary / 365.0) * 14
		formatted_pay = format("$%.2f", pay_for_period)
		puts "Pay This Period: #{formatted_pay}."
	end

end