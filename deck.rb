require_relative 'card'
class Deck
  def self.all_cards
    result = []
    Card.suits.each do |suit|
      Card.values.each do |value|
        result << Card.new(suit,value)
      end
    end
  end

  def initialize(cards = self.all_cards)
    @cards = cards 
  end

  def deal

  end

  def count
    @cards.count
  end







end
