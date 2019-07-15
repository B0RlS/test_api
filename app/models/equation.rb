# frozen_string_literal: true

class Equation < ApplicationRecord
  validates :a_coefficient, presence: true
  validates :b_coefficient, presence: true
  validates :c_coefficient, presence: true
end
