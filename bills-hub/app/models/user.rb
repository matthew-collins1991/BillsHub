class User < ApplicationRecord
  has_many :utilities
  has_many :bills, through: :utilities
end
