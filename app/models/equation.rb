class Equation < ApplicationRecord
  validates :coefficients, presence: true
end
