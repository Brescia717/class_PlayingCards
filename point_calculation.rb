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
