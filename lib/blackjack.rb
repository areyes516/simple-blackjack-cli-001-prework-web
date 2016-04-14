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
sum=deal_card+deal_card
  display_card_total(sum)
  sum
end


def hit? (total)
  prompt_user
  get_user_input
  if total == 7
    return total
    elsif total==20
    deal_card
    return total
    elsif total==14
    deal_card 
     return total

  end

  invalid_command# code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  return total # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end

