class Peer < ApplicationRecord
  has_one :endpoint
  validates :name, presence: true
  validates :public_key, presence: true
end
