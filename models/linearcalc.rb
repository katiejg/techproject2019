# insert inputs below in the array
def findrange
  domain = []
	puts "Type in your domain numbers one by one. [Type number, hit enter UNTIL you see a prompt to go further!] When you're done with all the domain number, type 'Done!'"
	while gets.chomp != "Done!" do
		domain << gets.chomp.to_f
		puts "Next number or 'Done!'"
	end
puts "#{domain} Is this correct?"
if gets.chomp == "no"
  puts "Sorry, please start again!"
  elsif gets.chomp == "yes"
  puts "In y = mx + b, what is m, or your slope?"
  rate = gets.chomp.to_f
  puts "In y = mx + b, what is b, or your y-intercept?"
  yintercept = gets.chomp.to_f
  domain.each do |input|
    # insert linear equation here in function form
    stepone=rate*input
    steptwo=stepone+yintercept
    puts "#{steptwo} is the y when x = #{input}"
  end
else
  puts "Sorry, an error! Please type 'no' or 'yes' next time!"
end
end

# calculator for standard linear form
def standardform
  puts "This is the standard linear form: ax + by = c"
  puts "What is a?"
  a = gets.chomp.to_f
  puts "What is b?"
  b = gets.chomp.to_f
  puts "Do you have x or y?"
  yorx = gets.chomp
  if yorx == "y"
    puts "What is y?"
    y = gets.chomp.to_f
    elsif yorx == "x"
    puts "What is x?"
    x = gets.chomp.to_f
  else
    puts "Oops. Try again."
  end
    puts "What is c?"
    c = gets.chomp.to_f
  if yorx == "y"
    first = b*y
    second = c - first
    third = second/a
    puts "x = #{third}"
  elsif yorx == "x"
    first = a*x
    second = c - first
    third = second/b
    puts "y = #{third}"
  end
end

# slope-intercept form
def slopeintercept
  puts "This is slope intercept form: y = mx + b"
  puts "What is m?"
  m = gets.chomp.to_f
  puts "What is b?"
  b = gets.chomp.to_f
  puts "Do you have x or y?"
  yorx = gets.chomp
  if yorx == "y"
    puts "What is y?"
    y = gets.chomp.to_f
    elsif yorx == "x"
    puts "What is x?"
    x = gets.chomp.to_f
  else
    puts "Oops. Try again."
  end
  if yorx == "y"
    first = y-b
    second = first / m
    puts "x = #{second}"
  elsif yorx == "x"
    first = m*x
    second = first + b
    puts "y = #{second}"
  end
end

puts "What would you like to do? Please type your answer as the list item number"
puts "1. Get a range from a domain"
puts "2. Solve for x or y in standard linear form"
puts "3. Solve for x or y in slope-intercept form"
whatchuwant = gets.chomp.to_i
if whatchuwant == 1
  findrange
  elsif whatchuwant == 2
  standardform
  elsif whatchuwant == 3
  slopeintercept
  else
  puts "Error! Sorry! Be sure to type your answer as the list item number!"
end
