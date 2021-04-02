require 'rails_helper'

describe Animal do
  describe 'validation' do
    it { should have_many :cats }
    it { should have_many :dogs }
  end
end