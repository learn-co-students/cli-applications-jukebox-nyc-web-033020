# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
 songs.each_with_index do |song,index|
   puts "#{index + 1}. #{song}"
 end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_pick = gets.strip
  if songs.include?(user_pick)
    puts "Playing #{user_pick}"
  elsif user_pick.to_i > 0 && user_pick.to_i < songs.size
    index = user_pick.to_i - 1
    puts "Playing #{songs[index]}"
  else puts "Invalid input, please try again"
  end
end

#play(songs)

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_pick = gets.strip
      if user_pick == "help"
         help
      elsif user_pick == "list"
         list(songs)
     elsif user_pick == "play"
         play(songs)
       elsif user_pick == "exit"
         exit_jukebox
  end
end

#run(songs)
