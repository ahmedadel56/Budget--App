class Entity < ApplicationRecord
  validates :name, presence: { message: 'Name can not be empty' }
  validates :amount,
            numericality: { only_float: true, greater_than_or_equal_to: 0,
                            message: 'Amount should be greater or equal to 0' }
  belongs_to :user
  has_and_belongs_to_many :categories
end
