class Wagon < ApplicationRecord
  validates :w_type, presence: true
  validates :number, presence: true

  belongs_to :train
  has_many :seats
end