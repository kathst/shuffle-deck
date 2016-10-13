#this code takes a deck of cards, shuffles them and prints the top n, where n is user input

class DeckShuffle
  attr_reader :deck
  
  def initialize()
    @deck = create_array()
  end

  #create array for card deck cards 1-10, then make array items into strings
  #create suits array
  #create jack, queen, king array
  private
  def create_array
    deck_int=(1..10).to_a
    deck_str=deck_int.map{ |i| i.to_s }
    deck_str = deck_str * 4
    suits = ["H","C","S","D"]
    jqk_array = ["JH","QH","KH","JC","QC","KC","JS","QS","KS","JD","QD","KD"]
    
    #add suits to deck, then add jack, queen, king to end
    deck_with_suits = []
    i = 0
    while i < 40
      deck_with_suits[i] = deck_str[i] + suits[i/10]
      i += 1
    end
    deck_with_suits = deck_with_suits + jqk_array
    return deck_with_suits
  end

  public
  #get number of cards required, collect random sample, print
  def random_sample(n)
    if n > 52
      puts "Number must be lower than 52"
    elsif n < 0
      puts "Number must be greater than 0"
    else
      sample = []
      sample = @deck.sample(n)
      return sample
    end
  end
end





