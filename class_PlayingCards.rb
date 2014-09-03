require_relative 'playing_card'
require_relative 'deck'
require_relative 'point_calculation'
require_relative 'player_hand'

deck = Deck.new

card_1 = deck.draw!
card_2 = deck.draw!

hand = PlayerHand.new([card_1, card_2])
puts hand.score

