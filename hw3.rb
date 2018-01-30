#Kyle Hekhuis
#Nathan Hull
#CIS 658 Winter 2018
#Homework 3

#Question 1
print "Question 1\n"

puts "Hello, World"

#Question 2
print "\nQuestion 2\n"

puts "Hello, World".index("World")

#Question 3
print "\nQuestion 3\n"

print "\nWhile\n"
i = 1
while i <= 10
	puts "This is funny monkey \##{i}"
	i += 1
end

print "\nUntil\n"
i = 1
until i == 11
	puts "This is funny monkey \##{i}"
	i += 1
end

print "\nLoop do\n"
i = 1 
loop do
	puts "This is funny monkey \##{i}"
	i += 1
	if i == 11
		break
	end
end

#Question 4
print "\nQuestion 4\n"

j = rand(1000)
puts "Random number is #{j}"
loop do
	puts "Guess the number"
	guess = gets
	if guess.to_i === j
		puts "You guessed it!"
		break
	end
end

#Question 5
print "\nQuestion 5\n"

data = ['hello', 0, :sym, 3.4, "world", true, [0..3]]
def convert_to_type_strings(input)
	output = []
	input.each{|x| output.push x.class.name}
	return output
end
print convert_to_type_strings(data)

#Question 6
print "\n\nQuestion 6\n"

class Array
	def convert_to_type_strings
		self.map{|x| x.class.name}
	end
end
print data.convert_to_type_strings

#Question 7
print "\n\nQuestion7\n"

def tabulate_sections(ensemble)
	sections = Hash.new(0)
	for instrument in ensemble
		if instrument == :piano
			sections["percussion"] += 1
		elsif instrument == :clarinet or instrument == :oboe
			sections["woodwind"] += 1
		elsif instrument == :trumpet or instrument == :frenchhorn
			sections["brass"] += 1
		elsif instrument == :violin or instrument == :cello
			sections["strings"] += 1
		else
			puts "#{instrument} is invalid"
		end
	end
	return sections
end
ensemble = [:piano, :clarinet, :oboe, :trumpet, :frenchhorn, :violin, :piano, :oboe, :cello]
print tabulate_sections(ensemble)
print "\n"
