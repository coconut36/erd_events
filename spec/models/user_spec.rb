require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:events) }

    it { should have_many(:rsvps) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
