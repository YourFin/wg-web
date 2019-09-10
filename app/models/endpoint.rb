class Endpoint < ApplicationRecord
  has_many :peer
  validates :name, presence: true
end
