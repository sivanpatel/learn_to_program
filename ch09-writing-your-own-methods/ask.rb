def ask question
	while true
	puts question
	answer = gets.chomp
		if answer == 'yes'
			return true
		end
		if answer == 'no'
			return false
		end
	end
end