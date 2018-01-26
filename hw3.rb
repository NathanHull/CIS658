#Question 1
puts "Hello, World"


#Question 2
puts "Hello, World".index("World")


#Question 3
i = 1
while i <= 10
	puts "This is funny monkey \##{i}"
	i += 1
end


i = 1
until i == 11
	puts "This is funny monkey \##{i}"
	i += 1
end

i = 1 
loop do
	puts "This is funny monkey \##{i}"
	i += 1
	if i == 11
		break
	end
end


#Question 4
j = rand(1000)
guess = 1
puts j
loop do
	puts "Guess the number"
	guess = gets
	if guess.to_i === j
		puts "You guessed it!"
		break
	end
end



