class Ticket < ApplicationRecord
  validates :start, presence: true
  validates :end, presence: true

  belongs_to :train
end