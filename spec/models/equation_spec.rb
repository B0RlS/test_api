require 'rails_helper'

RSpec.describe Equation, type: :model do
  describe '#coefficients' do
    it { should validate_presence_of(:coefficients) }
  end
end
