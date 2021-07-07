
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(song_array)
  song_array.each_with_index { |song, index| puts "#{index + 1}. #{song}" }
end

def play(song_array)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  find_song(user_input, song_array)
end

def find_song(user_input, song_array)
  if user_input.to_i > 0 && user_input.to_i <= song_array.length
    puts "Playing #{song_array[user_input.to_i - 1]}"
  elsif song_array.include?(user_input)
    index = song_array.index(user_input)
    puts "Playing #{song_array[index]}" 
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(song_array)
  puts "Please enter a command:"
  user_command = gets.strip
  until user_command == "exit"
    if user_command == "help"
      help
    elsif user_command == "list"
      list(song_array)
    elsif user_command == "play"
      play(song_array)
    else
      puts "Sorry, that is not a valid command."
    end
    puts "Please enter a command:"
    user_command = gets.strip
  end
  exit_jukebox
end
