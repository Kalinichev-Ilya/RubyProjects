#Hash {key = vopros, value = massiv iz answers }
#print key potom v cikle voprosi
require_relative "question"
require_relative "hash"
require 'nokogiri'

class Utills	
	attr_reader :file_name

	def initialize(file_name)
		@file_name = file_name
	end

#make path to file
	def file_path
		File.dirname(__FILE__) + "/" + @file_name
	end

#read xml, returns hash
	def read
		Hash.from_xml(File.open(file_name))		
	end

#returns question string
#puts Utills.new("data.xml").make_question(:one)
	def make_question(tag)
		read.dig(tag, :question)
	end

#returns answer string
#puts Utills.new("data.xml").make_answer("answer")
	def make_answer(tag)
		@doc = Nokogiri::XML(File.open(file_path))
		@doc.xpath("//"+tag).text.split('.')
		#read.dig(tag, :answer)
	end	

#returns the input data
	def input_answer
		STDIN.gets.encode("UTF-8").chomp
	end

#checks the input data
	def validate(answers, input)
	while (!answers.include?(input)) do
		puts "#Invalid input: #{input}"
		input_answer
		end
	end
	#puts Utills.new("data.xml").make_question(:one)	
end