#test specification for shuffledeck
#written in RSpec

require_relative "shuffledeck"

describe DeckShuffle, "shuffling" do

  it "should use a deck of 52 cards" do
    ds = DeckShuffle.new
    expect(ds.deck.length).to eq(52)
  end
  
  it "should have 52 unique cards in the deck" do
    ds = DeckShuffle.new
    i = 0
    j = 0
    while i < 52
      while j < 52
        if i != j
          expect(ds.deck[i]).not_to eq(ds.deck[j])
        end
        j += 1
      end
      i += 1
    end
  end
                               
  it "should make an array of n cards to print out, where n is user input" do
    ds = DeckShuffle.new
    expect(ds.random_sample(4).length).to eq(4)
  end

  it "should print a random selection of cards" #not code test, function test?

end
