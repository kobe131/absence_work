class Card
    include Comparable
    attr_reader :suit, :value
    SUITS = {
      :clubs => ,
      :diamonds =>,
      :hearts => ,
      :spades =>
    }
    VALUES = {
      :two => "2",
      :three => "3",
      :four => "4",
      :five => "5",
      :six => "6",
      :seven => "7",
      :eight => "8",
      :nine => "9",
      :ten => "10",
      :jack => "J",
      :queen => "Q",
      :king => "K",
      :ace => "A",
    }

    def self.suits
      SUITS.keys
    end

    def self.values
      VALUE.keys
    end

    def initialize(suit,value)
      if !self.suits.include?(suit) || !self.values.include?(value)
        raise "illegal suits or values"
      end
      @suit = suit
      @value = value
    end

    def to_string
      VALUES[@value] + SUITS[@suit]
    end

    def ==(othercard)
      self.suit == othercard.suit && self.value == othercard.value
    end

    def <=>(othercard)
      if self == othercard
        0
      elsif value != othercard.value
        self.values.index(value) <=> self.values.index(othercard.value)
      elsif suit != othercard.suit
        self.suits.index(suit) <=> slef.suits.index(othercard.suit)
      end
    end
  end
