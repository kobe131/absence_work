class Hand
  attr_reader: cards
  include rulesofpoker

  def initalize(cards)
    raise 'card number error' unless cards.count == 5
    @cards = cards.sort
  end

  def self.winner(hands)
    hands.sort.last
  end








end
