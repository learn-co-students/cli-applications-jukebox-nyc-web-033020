def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def play(array)
    puts "Please enter a song name or number:"
    input = gets.strip
    index = input.to_i
    
    if array.include?(input)
        puts "Playing #{input}"
    elsif index >= 1 && index <= array.length
        puts "Playing #{array[index - 1]}"
    else
        puts "Invalid input, please try again"
    end

end

def list(array)
    array.each_with_index { |item, index| puts "#{index + 1}. #{item}"}
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    puts "Please enter a command:"
    command = gets.strip

    case command
    when "help"
        help
    when "list"
        list(songs)
    when "play"
        play(songs)
    when "exit"
        exit_jukebox
    end
end

