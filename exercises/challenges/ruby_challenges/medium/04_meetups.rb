# frozen_string_literal: true

# Problem
# April, June, Sept, Nov have 30 days
# Feb has 28 most years, 29 in leap years
# All other months have 31 days
# ranges for days of week:
# first: 1-7
# second: 8-14
# third: 15-21
# fourth: 22-28
# fifth: 29-31
# last: b/w 22-31 depending on the month

# Examples
# need a Meetup class with a constructor
# constructor accepts two arguments, year and month
# need an instance method that returns a Date object
# arguments are the day of the week, and a descriptor
# date is returned as a Date object

# Data Structure
# working with Date objects

# Algorithm
# constructor
# passes in year and month
# assigns those arguments to instance variables

# day
# passes in weekday and the descriptor
# downcase the weekday and descriptor
# use a case statement to know when to create the Date object and how much to iterate
# assign the number of days max to iterate over to a counter
# iterate through the Date object and pass it to a helper method in the iteration

# day_of_week?
# accepting the weekday and the Date object
# use a case statement to go through

require 'date'

class Meetup
  attr_reader :month, :year, :days_in_month

  def initialize(year, month)
    @year = year
    @month = month
    @days_in_month = Date.new(year, month, -1).day
  end

  def day(weekday, descriptor)
    weekday = weekday.downcase
    descriptor = descriptor.downcase
    counter = 6

    date = case descriptor
           when 'first'
             Date.new(year, month, 1)
           when 'second'
             Date.new(year, month, 8)
           when 'third'
             Date.new(year, month, 15)
           when 'fourth'
             Date.new(year, month, 22)
           when 'fifth'
             counter = 3
             Date.new(year, month, 29)
           when 'last'
             Date.new(year, month, days_in_month - 6)
           when 'teenth'
             Date.new(year, month, 13)
           end

    counter.times do
      break if day_of_week?(weekday, date)
      return nil if date.day == days_in_month

      date = date.next
    end

    date
  end

  private

  def day_of_week?(weekday, date)
    case weekday
    when 'monday' then date.monday?
    when 'tuesday' then date.tuesday?
    when 'wednesday' then date.wednesday?
    when 'thursday' then date.thursday?
    when 'friday' then date.friday?
    when 'saturday' then date.saturday?
    when 'sunday' then date.sunday?
    end
  end
end
