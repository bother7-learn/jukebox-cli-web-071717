songs = [
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

def help
  #this method should be the same as in jukebox.rb
puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(my_songs)
  my_songs.each do |song|
    puts "#{song}"
  end
end

def play(my_songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  check = 0
  numbers = []
  counter = 0
  choice = ""
  while counter < my_songs.size
    numbers << "#{counter + 1}"
    counter += 1
  end
##  binding.pry
  my_songs.each do |song|
    if song == user_input
      check = 1
      choice = song
    end
  end
  numbers.each do |num|
    if num == user_input
      check = 1
      index = num.to_i
      choice = my_songs[index - 1]
    end
  end
  if check == 0
    puts "Invalid input, please try again"
    user_input = gets.chomp
  end
  choice
  puts "Playing #{choice}"
  ##binding.pry
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  if input == !"exit"
    if input == "list"
      list(my_songs)
    end
    if input == "help"
      help
    end
    if input == "play"
      play(my_songs)
    end
  elsif input == "exit"
    exit_jukebox
  else
  end
end
