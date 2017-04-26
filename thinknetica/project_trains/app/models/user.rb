class User < ApplicationRecord
  validates :login, presence: true

  has_many :tickets
end