class PlayingCard
  attr_reader :rank, :suit

  SUITS = ['♠︎', '♣︎', '♥︎', '♦︎']
  VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face_card?
    ['J', 'Q', 'K'].include?(@rank)
  end
end


class PointCalculation
  def initialize(playing_card)
    @playing_card = playing_card
  end

  def value
    if self.face_card?
      15
    elsif self.rank == 'A'
      1
    else
      self.rank.to_i
    end
  end
end


class PlayerHand
  def initialize(collection)
    @collection = collection
  end

  def score
    score = 0
    @collection.each do |card|
      puts card.rank
      score += card.value
    end
    score
  end
end


class Deck
  def initialize
    @collection = []
    PlayingCards::SUITS.each do |suit|
      PlayingCards::VALUES.each do |value|
        @collection << PlayingCard.new(value, suit)
      end
    end

    @collection.shuffle!
  end

  def draw!
    @collection.pop
  end

  # Although getter methods grant us access to instance variables, they also
  # provide vulnerability to those instance variables being manipulated.
  # For security purposes, we will choose to leave out this getter method,
  # as to prevent stacking of the deck.

  # def collection  #  This is known as a 'getter method'.
  #   @collection   #  It gives us access to @collection.
  # end
end

deck = Deck.new

card_1 = deck.draw!
card_2 = deck.draw!

hand = PlayerHand.new([card_1, card_2])
puts hand.score
