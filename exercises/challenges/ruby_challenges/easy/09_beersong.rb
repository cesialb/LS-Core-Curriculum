# Problem
# write a program that can generate the 99 bottles of beer song

# Mental Model
# we need a BeerSong class
# instance method #verse, that takes a parameter(s) for the verse of the song

# Data Structure
# input - integer for instance method
# output - string

# Algorithm
# #verse takes splat operator for verses
# save string
# replace ? with the number and save it

class BeerSong
  def self.verse(verse)
    string = "? bottles of beer on the wall, ? bottles of beer.\n" \
    "Take one down and pass it around, # bottles of beer on the wall.\n"
    p verses
    verses.each do |verse|
      string.gsub!('?', verse.to_s)
      string.gsub!('#', (verse - 1).to_s)
    end
    puts string
  end

  def self.verses(verse1, verse2)

  end

  def self.lyrics
  end
end

BeerSong.verse(99, 98)