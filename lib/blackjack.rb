def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input
  if user_input == 's'
    current_card_total
  elsif user_input == 'h'
    current_card_total += deal_card
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
require 'pry'

def runner
  welcome
  cardsum = initial_round
  until cardsum > 21
    cardsum = hit?(cardsum)
    display_card_total(cardsum)
  end
  end_game(cardsum)
end
