class Company < ApplicationRecord
  belongs_to :utility
  has_many :utilities
end
