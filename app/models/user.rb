class User < ApplicationRecord
  has_many :entities
  has_many :categories
end
