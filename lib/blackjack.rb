def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  card = Random.rand(1..11)# code #deal_card here
end

def display_card_total(card)
  puts "Your cards add up to #{card}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay" # code #prompt_user here
end

def get_user_input
  user_input = gets.chomp
  return user_input # code #get_user_input here
end

def end_game(card)
  puts "Sorry, you hit #{card}. Thanks for playing!" # code #end_game here
end

def initial_round
  # code #initial_round here
  2.Times do
    puts deal_card
  end
  return display_card_total
end

# This method represents the first round of the game for a given player. It should call on the `#deal_card` method twice, use the `#display_card_total` method to `puts` out the sum *and then* return the sum. This method will therefore call on two other helper methods, `#deal_card` and `#display_card_total`, which takes in an argument of the sum of both invocations of `#deal_card`.

def hit?
  # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end

