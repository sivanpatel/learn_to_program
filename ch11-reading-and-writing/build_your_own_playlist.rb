def shuffle arr
    #empty array for shuffled items to go into
    shuffled = []

    #take random item from original array and put it into shuffled
    #keep the rest where they are
    #then create new array with arr so there isnt an empty slot in arr
    while arr.length>0

    rand_number=rand(arr.length)
    current_number=rand(arr.length)
    new_arr=[]

        arr.each do |item|
            if rand_number==current_number
                shuffled.push item
            else
                new_arr.push item
            end
            puts arr.inspect
            arr=new_arr
            current_number=rand(arr.length)
        end
        

    end
    shuffled

end

music_names = Dir['**/*.mp3']


shuffled_music = shuffle(music_names)

File.open 'playlist.m3u', 'w' do |f|
	shuffled_music.each do |mp3|
		f.write mp3+"\n"
	end
end

puts "Done"