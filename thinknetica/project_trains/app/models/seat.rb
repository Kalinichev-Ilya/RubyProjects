class Seat < ApplicationRecord
  validates :number, presence: true
end