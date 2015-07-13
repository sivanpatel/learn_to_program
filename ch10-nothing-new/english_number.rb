def english_number number
  #special cases
  if number < 0 
  	puts 'Please enter a number greater than zero'
  end

  if number == 0
  	puts 'Zero'
  end

  #use these arrays for hundreds, thousands etc
  #arrays start numbering at 0, ie ones[0]=one
  ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  tens = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  millions = [['hundred', 2],
              ['thousand', 3],
              ['million', 6],
              ['billion', 9],
              ['trillion', 12],
              ['quadrillion', 15],
              ['quintillion', 18],
              ['sextillion', 21],
              ['septillion', 24],
              ['octillion', 27],
              ['nonillion', 30],
              ['decillion', 33],
              ['undecillion', 36],
              ['duodecillion', 39],
              ['tredecillion', 42],
              ['quattuordecillion', 45],
              ['quindecillion', 48],
              ['sexdecillion', 51],
              ['septendecillion', 54],
              ['octodecillion', 57],
              ['novemdecillion', 60],
              ['vigintillion', 63],
              ['googol', 100]]

  number_string = ''

  left = number

  #go through each of the millions pairs (pop last term) and check to see if terms are needed
  while millions.length > 0
    mil_pair = millions.pop
    mil_name = mil_pair[0]
    mil_base = 10 ** mil_pair[1].to_i
    write = left/mil_base
    left = left - write*mil_base

    if write > 0
      number_string = number_string + ones[write-1] + ' ' + mil_name
      if left >0
        number_string = number_string + ' '
      end
    end
  end
  
  	write = left/10
  	left = left - write*10
  	if write > 0
  		if write == 1 and left > 0 
  			number_string = number_string + teens[left-1]
  			left=0
  		else
  			number_string = number_string + tens[write-1]
  		end
  		if left > 0
  			number_string=number_string + '-'
  		end
  	end

  	write=left
  	left=0

  	if write > 0
  		number_string = number_string + ones[write-1]
  	end
  
  number_string
  









end
