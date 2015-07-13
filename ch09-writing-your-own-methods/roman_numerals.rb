def roman_numeral num
	thousands = num/1000
	five_hundreds = num % 1000/500
	hundreds = num %1000/100
	fifties = num % 100/50
	tens = num % 100/10
	fives = num % 10/5
	ones = num % 10/1
	roman = ''

	# first thousands
	roman = 'M'*thousands

	#set special cases of 100s, 10s, 1s
	#i.e. when there are 9s or 4s

	#therefore remainder values for five_hundreds and fives not needed
	#as they will become apparent from hundreds and tens and ones values
	#also need special conditions for when value is above 5

	#hundreds
	if hundreds == 9
		roman = roman + 'CM'
	elsif hundreds == 4
		roman = roman + 'CD'
	elsif hundreds == 5
		roman =  roman + 'D'
	elsif hundreds > 5
		roman = roman + 'D' + 'C'*(hundreds - 5)
	else
		roman = roman + 'C'*hundreds
	end

	#tens
	if tens == 9
		roman = roman + 'XC'
	elsif tens == 4
		roman = roman + 'CL'
	elsif tens == 5
		roman = roman +'L'
	elsif tens > 5
		roman = roman + 'L' + 'X'*(tens - 5)
	else
		roman = roman + 'X'*tens
	end

	#ones
	if ones == 9
		roman = roman + 'IX'
	elsif ones == 4
		roman = roman + 'IV'
	elsif ones == 5
		roman = roman + 'V'
	elsif ones > 5
		roman = roman + 'V' + 'I'*(ones - 5)
	else
		roman = roman + 'I'*ones
	end
	

			

end