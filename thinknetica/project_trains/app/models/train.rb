class Train < ApplicationRecord
  validates :number, presence: true

  belongs_to :route
end
