class Wagon < ApplicationRecord
  validates :w_type, presence: true

  belongs_to :train
end