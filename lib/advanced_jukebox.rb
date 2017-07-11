#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer
require 'pry'
my_songs = {
"Go Go GO" => '/Users/Joe/Development/Prework/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/Joe/Development/Prework/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/Joe/Development/Prework/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/Joe/Development/Prework/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/Joe/Development/Prework/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/Joe/Development/Prework/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/Joe/Development/Prework/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end




def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
    my_songs.each do |song, path|
      puts "#{song}"
  binding.pry
end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
binding.pry
  puts "Please enter a song name:"
  user_input = gets.chomp
  check = 0
  song_f = ""
  path_f = ""

while check == 0
  my_songs.each do |song, path|
    if song.to_s == user_input
      check = 1
      song_f = song.to_s
      path_f = path
    end
  end
  if check == 0
    puts "Invalid input, please try again"
    user_input = gets.chomp
  end
end
puts "Playing #{song_f}"
system "open #{path_f}"
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  puts input.class
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
