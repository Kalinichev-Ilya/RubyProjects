class Seat < ApplicationRecord
  validates :number, presence: true

  belongs_to :wagon
end