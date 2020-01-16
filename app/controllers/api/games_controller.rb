class Api::GamesController < ApplicationController
  def tell_me_name
    @name = params["name"].upcase
    if @name[0] == "A"
      @letter = "Your name begins with the first letter in the alphabet."
    else
      @letter = "Your name does not begin with the first letter in the alphabet."
    end
    #@name = params["name"].class
    render "tell_me_name.json.jb"
  end


def guess_query
  @guess = params["guess"].to_i
  hidden_number = 42

  if @guess > hidden_number
    @message = "too high, guess lower number"
  elsif @guess < hidden_number
    @message = "guess higher"
  else
    @message = "you guessed correct."
  end
  render "guess_query.json.jb"
end

def guess_number

@guess = params["numbers"].to_i
hidden_number = 42

  if @guess > hidden_number
    @message = "too high, guess lower number"
  elsif @guess < hidden_number
    @message = "guess higher"
  else
    @message = "you guessed correct."
  end
  render "guess_number.json.jb"
end

def guess_number_again

@guess = params["message"].to_i
hidden_number = 42

  if @guess > hidden_number
    @message = "too high, guess lower number"
  elsif @guess < hidden_number
    @message = "guess higher"
  else
    @message = "you guessed correct."
  end
  render "guess_number_again.json.jb"
end



  # Make a separate route using a POST request and body parameters to take in a username and password. If the username is “hugh” and the password is “swordfish”, then return a json message saying “Valid credentials.“. Otherwise, return a message saying “Invalid credentials.”
end

end

#   def cap_letter
#     @name = params["name"]

#     if @name[0] == "a"
#       @letter = "Your name begins with the first letter in the alphabet."
#     else
#       @letter = "Your name does not begin with the first letter in the alphabet."
#     end
#     render "letter.json.jb"
#   end



