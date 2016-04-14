def welcome
  puts "Welcome to the Blackjack Table" # code #welcome here
end

def deal_card
  rand(1..11)# code #deal_card here
end

def display_card_total (total)
  puts "Your cards add up to #{total}"# code #display_card_total here
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay" # code #prompt_user here
end

def get_user_input
gets.chomp
end

def end_game(total)
 puts "Sorry, you hit #{total}. Thanks for playing!" # code #end_game here
end

def initial_round
round=deal_card+deal_card
  display_card_total(round)
  round
end


def hit? (total)
  prompt_user
  input=get_user_input
  if input == "s"
    return total
    elsif input=="h"
    total=total+deal_card
    return total
    else
    invalid_command

  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total=initial_round
  until total>21
    total=hit?(total)
    display_card_total(total)
  end
end_game(total)
end

