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
