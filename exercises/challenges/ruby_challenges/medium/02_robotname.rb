# Problem
# write a program that manages robot factory settings
# when robots come off the floor, they have no name
# first time you boot them up, a random name is generated
# every once in a while, a robot is reset to its factory settings
# name gets wiped
# names must be random - no predictable sequence
# there is a risk of collision - do not allow the same name to be used twice

# Mental Model
# class Robot with an instance variable @name
# no initialization
# within #name, the name is assigned
# the name is five characters long and alphanumeric
# create an array of all letters and numbers and randomize

class Robot
  ALPHA_SEQUENCE = ('A'..'Z').to_a
  NUM_SEQUENCE = ('0'..'9').to_a
  @@used_names = []

  def initialize
    @name = ''
  end

  def name
    if @name == ''
      randomize_name
    else
      @name
    end
  end

  def randomize_name
    loop do
      2.times { @name << ALPHA_SEQUENCE.sample }
      3.times { @name << NUM_SEQUENCE.sample }

      break unless @@used_names.include?(@name)

      @name = ''
    end

    @@used_names << @name.clone

    @name
  end

  def reset
    @@used_names.delete(@name)
    @name = ''
  end
end

Robot.new.name
