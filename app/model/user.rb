class User < ActiveRecord::Base
  has_many :likes
  has_many :restaurants, through: :likes
end
