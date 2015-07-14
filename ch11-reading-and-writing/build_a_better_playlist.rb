def music_shuffle filenames
	files = Dir[**/*.mp3]
	num_files = files.length

	split_files = files.split '/'

	shuffle split_files


end
