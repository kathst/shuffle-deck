#/usr/bin/env ruby -w

#top level file for shuffledeck
require_relative 'shuffledeck'

mydeck = DeckShuffle.new

puts "Please enter the number of cards that you want (0-52): "
input = gets.to_i
p  mydeck.random_sample(input)
