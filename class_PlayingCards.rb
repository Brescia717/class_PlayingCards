deck = Deck.new

card_1 = deck.draw!
card_2 = deck.draw!

hand = PlayerHand.new([card_1, card_2])
puts hand.score
