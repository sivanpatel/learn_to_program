def roman_to_integer roman
  numbers= {'i' => 1,
  			'v' => 5,
  			'x' => 10,
  			'l' => 50,
  			'c' => 100,
  			'd' => 500,
  			'm' => 1000,
  			}

total = 0
so_far = 0


starting = roman.length -1

while starting >= 0
      starting = starting - 1
    lower = roman.downcase
    value = numbers[lower]

    if value.to_i < so_far.to_i
      val *= -1
    else
      so_far=value
    end

    total = total + value.to_i
end

total

end

puts(roman_to_integer('mcmx'))
