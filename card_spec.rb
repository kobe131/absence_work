require 'rspec'
require 'card'

describe Card do
  describe '#initalize' do
    subject(:card) {Card.new(:clover, :five)}
    it 'set up corred correct' do
      expect(card.suit).to_eq(:clover)
      expect(card.value).to_eq(:five)
    end

    it 'raise error with invalid input' do
      expect do
        Card.new(:hello, :soccer)
      end.to raise_error
    end
  end
  describe '#<=>' do
    it 'return 0 when card is same' do
      expect(Card.new(:heart, :four) <=> Card.new(:hear, :four)).to eq(0)
    end
    it 'return 1 when card has higher value' do
      expect(Card.new(:clover, :three) <=> Card.new(:spades, :one)).to eq(-1)
    end
    it 'return -1 when card has lower value' do
      expect(Card.new(:clover, :four) <=> Card.new(:clover, :nine)).to eq(1)
    end
  end
end
