require 'rails_helper'
require 'support/factory_girl'

RSpec.describe Workout do
  it 'has a valid factory' do
    expect(build(:workout)).to be_truthy
  end

  it 'is invalid without a name' do
    expect(build(:workout, name: nil)).not_to be_valid
  end

  it 'is invalid without a type' do
    expect(build(:workout, exercise_type: nil)).not_to be_valid
  end

  it 'is invalid without a description' do
    expect(build(:workout, description: nil)).not_to be_valid
  end
end
