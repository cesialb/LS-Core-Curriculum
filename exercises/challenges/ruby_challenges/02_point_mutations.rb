# frozen_string_literal: true

# Problem
# write program that can calculate Hamming distance b/w two DNA strands

# what is the Hamming distance?
# number of differences b/w two homologous DNA strands taken from different genomes w/common ancestor
# only works for sequences/strands of equal length
# if the lengths are unequal, compute HD over the shorter length

# Mental Model:
# DNA class initialized with an attribute to hold the strand itself (string)

# behaviors?
# see if the two strands are equal
# check HD
# check if strands are equal first
# if they're not equal, then use the shorter strand

# Data Structure
# strand will be held in a String object
# DNA class
# hamming_distance is passing in a string, not a DNA object

# Algorithm
# hamming_distance
# check if the strands are equal - no need!
# sort the two strands and iterate through the first element only, using #each_char and index counter
# return the hamming_counter when iteration is done

# DNA class to hold strand sequence
class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    # sorts strands by length, so there is no need to check for equal length
    strands = [@strand, other_strand].sort_by(&:length)
    hamming_counter = 0
    index = 0

    # iterates through the shorter/equal strand
    strands.first.each_char do |base|
      hamming_counter += 1 if base != strands.last[index]
      index += 1
    end

    hamming_counter
  end
end
