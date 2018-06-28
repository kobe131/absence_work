module rulesofpoker

  RANKS = [
     :royal_flush,
     :straight_flush,
     :four_of_a_kind,
     :full_house,
     :flush,
     :straight,
     :three_of_a_kind,
     :two_pair,
     :one_pair,
     :high_card
   ]

def <=>(otherhand)
  if self == otherhand
    0
  elsif self != otherhand.rank
    RANKS.reverse.index(self) <=> RANKS.reverse.index(otherhand.rank)
  else
    'tie'
  end
end
