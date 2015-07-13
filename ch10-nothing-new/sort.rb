def sort arr
	recursive_sort arr, []
end

def recursive_sort unsorted, sorted
	#if all has been sorted, unsorted array should be empty so nothing left 
	#to do but return sorted array
	if unsorted.length <= 0
		return sorted
	end

	#sort by using < method. maybe throw in .downcase so it can deal with
	#capitalized words as well

	#look for 'smallest' item in unsorted array each time to push to sorted array

	#take one item from unsorted array
	test = unsorted.pop
	#introduce another array so you dont keep putting the same word at the end
	#of the unsorted array with push
	still_unsorted=[]

	unsorted.each do |tested|
		if tested < test
			still_unsorted.push test
			test = tested
		else
			still_unsorted.push tested
		end
	end
	
	sorted.push test

recursive_sort still_unsorted, sorted

end

