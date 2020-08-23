# songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]

def help
	commands = ["I accept the following commands:", "- help : displays this help message", "- list : displays a list of songs you can play", "- play : lets you choose a song to play", "- exit : exits this program"]
	commands.each {|command| puts command}
end

def list(songs)
	songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end

# def get_song_title(song)
# 	song_array = song.split("-")
# 	title = song_array[1][1..-1]
# 	title
# end

def play(songs)
	puts "Please enter a song name or number:"
	input = gets.strip
	songs.each_with_index do |song, index|
		num = index + 1
		# title = get_song_title(song)
		if input == num.to_s || input == song
			puts "Playing #{song}"
			return
		end
	end
	puts "Invalid input, please try again"
end

def exit_jukebox
	puts "Goodbye"
end

def run(songs)
	puts "Please enter a command:"
	input = gets.strip
	case input
	when "help"
		help
		run(songs)
	when "list"
		list(songs)
		run(songs)
	when "play"
		play(songs)
		run(songs)
	when "exit"
		exit_jukebox
	else
		run(songs)
	end
end

# play(songs)