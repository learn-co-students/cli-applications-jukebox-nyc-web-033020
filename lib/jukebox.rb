def songs_list
  [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]
end
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(library)
  library.each_with_index{ |val,i| puts "#{i+1}. #{val}" }
end

def play(library)
  puts "Please enter a song name or number:"
  input = gets.strip
  if library.include?(input)
    puts "Playing #{input}"
  elsif input.to_i > 0 && input.to_i <= library.length
    puts "Playing #{library[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
   # play(library)
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(cmd)
  lib = songs_list
  puts "Please enter a command:"
  input = gets.strip
  case input 
    when 'exit'
      exit_jukebox
    when 'help'
      help
    when 'list'
      list(lib)
    when 'play'
      play(lib)
    end
end