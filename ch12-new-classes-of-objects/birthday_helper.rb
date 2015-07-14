birthdays = {}

#opens and reads birthday files
File.read(birthdays.txt).each_line do |line|
	line = line.chomp

#separates names and birthdays, separated at comma in input file
	comma = 0
	while line[comma] != ',' &&
		comma < line.length
		comma = comma +1
	end
	name = line[0..(comma-1)]
	date = line[-1 .. -12]
	bdate[name] = date
end

#ask for name
puts 'Whos birthday would you like?'
name=gets.chomp
date=bdate[name]

puts date

next_bday = date + (365*24*60*60)
puts next_bday

time_till_bday_second = next_bday - Time.new
time_till_bday_days = time_till_bday_second/(60*60*24)

next_age = (Time.new - date)/(60*60*24*365)
puts 'Your next birthday will be in #{time_till_bday_days} days'
puts 'You will be #{next_age} years old'

