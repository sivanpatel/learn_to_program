puts 'What year were you born in?'
year=gets.chomp
puts 'What month were you born in?'
month=gets.chomp
puts 'What day were you born on?'
day=gets.chomp

bday_time = Time.local(year, month, day)

time_diff = Time.new - bday_time

years = time_diff/(60*60*24*365)

spanks = years.to_i

puts 'SPANK! '*spanks