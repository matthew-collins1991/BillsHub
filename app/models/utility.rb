class Utility < ApplicationRecord
  has_many :bills
  belongs_to :company
  belongs_to :user
end
