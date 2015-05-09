class User < ActiveRecord::Base
  has_many :guests
  has_many :cards, through: :guests
end
