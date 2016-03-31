def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  card = Random.rand(1..11)# code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay" # code #prompt_user here
end

def get_user_input
  user_input = gets.chomp
  return user_input # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!" # code #end_game here
end

def initial_round
  deal_card
  deal_card
    card_total = deal_card + deal_card
  display_card_total(card_total)
    return card_total
end

# This method represents the first round of the game for a given player. 
#It should call on the `#deal_card` method twice, use the `#display_card_total` 
#method to `puts` out the sum *and then* return the sum. This method will therefore 
#call on two other helper methods, `#deal_card` and `#display_card_total`, which 
#takes in an argument of the sum of both invocations of `#deal_card`.

# def hit?(current_card_total)
#   # code hit? here
#   get_user_input == "s"
#   #   if false 
#   #     deal_card
#   prompt_user
#   get_user_input
#   # return current_card_total
#   # if gets_user_input == 's'
#   #     puts card_total
#   # end
#     if get_user_input == "h"
#         deal_card
#         current_card_total += deal_card
#   #   end
#   # #   else user_input != 's' || 'h'
#   #     invalid_command
#   #     prompt_user
#   #   return card_total
#   # # end
#   return current_card_total
# end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h"
      card_total = card_total + deal_card
      elsif input == "s"
      card_total = card_total
      else
      invalid_command
      end
  card_total
  end

# #### The `#hit?` Method

# This method is a bit more complex. It should take in an argument 
#of the player's current card total. So, set up your `#hit?` method 
#to take in an argument of a number. 

# Then, the method should use the `#prompt_user` method to prompt 
#the user for input and the `#get_user_input` method to get and store 
#the user's input. Now we need to implement some logic. If the player's 
#input is `'s'`, we don't deal a new card. If the player's input is 
#`'h'`, we do need to deal a new card. In this case, use the 
#`#deal_card` method to deal a new card and increment the player's 
#card total by whatever number is returned by `#deal_card`. 

# If the player's input is *neither* `'h'` *nor* `'s'`, call on the 
#`#invalid_command` method to output the phrase "Please enter a valid 
#command". Then, call on the `#prompt_user` method again to remind your 
#user what a valid command is.  

# In either case, our method should then return the player's current 
#card total. 


def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

# def runner
#   # code runner here
#   #card_total = initial_round
#   welcome
#   initial_round
#   card_total = initial_round
#   #input = get_user_input
#   until card_total > 21
#       hit?(card_total)
#       display_card_total(card_total)
#   end
#   end_game(card_total)
# end

def runner
  # code runner here
  welcome
  card_total = initial_round
  until card_total > 21
      card_total = hit?(card_total)
      display_card_total(card_total)
  end
  end_game(card_total)
end
### The Runner Method: `#runner`

# Once you get all of the tests in the first part of the test 
# suite passing, you have built the building blocks of our blackjack 
# game. Now, we need to put them all together in the `#runner` method.
#  The `#runner` method is responsible for enacting the game play 
#  *until* the user loses. Remember that a player loses if the sum of 
#  their cards exceeds 21. 

# Here's how we want our game to run: 

# 1. Welcome the user
# 2. Deal them their first two cards, i.e. their `initial_round`
# 3. Ask them if they want to hit or stay
# 4. If they want to hit, deal another card
# 5. If they want to stay, ask them again!
# 6. If their card total exceeds 21, the game ends. 

# Use a loop constructor (I'd recommend `until`, but that is by no 
# means your only option) to enact the above game play in the 
# `#runner` method. Then, check out the `lib/runner.rb` file. Notice 
# that it is simply calling the `#runner` method. The runner file will 
# call the `#runner` method which should in turn utilize all the other 
# methods you built!

    
