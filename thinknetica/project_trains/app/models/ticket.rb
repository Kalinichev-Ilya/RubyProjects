class Ticket < ApplicationRecord
  validates :start, presence: true
  validates :end, presence: true
  validates :name, presence: true
  validates :surname, presence: true

  belongs_to :train
  belongs_to :user
end