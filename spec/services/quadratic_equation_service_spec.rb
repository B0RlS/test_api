# frozen_string_literal: true

require 'rails_helper'

RSpec.describe QuadraticEquationService do
  subject { QuadraticEquationService.new(equation_params) }
  let(:equation_params) do
    {
        a: 1,
        b: -2,
        c: 1
    }
  end

  describe '#call' do
    it 'create solution' do
      puts subject.call
      expect(subject.call).to eql({:x=>1.0})
    end
  end
end