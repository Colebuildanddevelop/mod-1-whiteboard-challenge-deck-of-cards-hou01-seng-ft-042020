require 'pry'

class Deck
  attr_accessor :cards
  @@all = [] 
  RANKS = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  SUITS = ["Hearts", "Clubs", "Diamonds", "Spades"]
  def initialize 
    @cards = []
    r_count = 0 
    s_count = 0
    RANKS.length.times do 
      SUITS.length.times do 
        @cards << Card.new(RANKS[r_count], SUITS[s_count])
        s_count > 2 ? s_count = 0 : s_count += 1
      end 
      r_count += 1 
    end 
    @@all << self
  end

  def self.all
    @@all 
  end

  def chose_card 
    @cards.sample
  end
end

class Card
  attr_accessor :rank, :suit
  @@all = []
  def initialize(rank, suit) 
    @rank = rank 
    @suit = suit
    @@all << self
  end 

  def self.all 
    @@all
  end 

end

binding.pry 
0