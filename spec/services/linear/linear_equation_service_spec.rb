# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LinearEquationService do
  subject { LinearEquationService.new(equation_params) }
  let(:wrong_subject) { LinearEquationService.new(wrong_params) }
  let(:equation_params) do
    {
        a: 4,
        b: 8
    }
  end
  let(:wrong_params) do
    {
        a: 0,
        b: 4
    }
  end

  describe '#call' do
    it 'create solution' do
      expect(subject.call).to eql({:x=>2.0})
    end

    it 'wrong solution' do
      expect(wrong_subject.call).to eql('There is no root in the equation')
    end
  end
end