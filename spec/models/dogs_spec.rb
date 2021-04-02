require 'rails_helper'

describe Dog do
  describe 'validation' do
    %i[name breed].each { |property| it { should validate_presence_of property } }
    it { should belong_to(:animal) }
  end
end