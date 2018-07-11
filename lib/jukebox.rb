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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (songs)
  new_list = []
    songs.each_with_index do |song, index|
      new_list.push("#{index+1}. #{song}")
    end
  
  puts new_list
  new_list
end

def play(songs)
  songs = list(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp.downcase

  if songs.any? { |song| song.downcase.include?(song_choice)} == true
    songs.each do |song|
      if song.downcase.include?(song_choice)
        puts "Playing #{song}"
      end
    end
  else songs.any? { |song| song.downcase.include?(song_choice) } == false
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  help
end 
