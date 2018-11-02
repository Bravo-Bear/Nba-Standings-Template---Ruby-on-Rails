class Team < ApplicationRecord
  scope :eastern, -> { where(conference: "Eastern")}
  scope :western, -> { where(conference: "Western")}
  scope :ordered, -> { order(wins: :desc, losses: :asc)}
  
  def win_percentage
     (wins.to_f / (wins + losses)) * 100
  end
end
