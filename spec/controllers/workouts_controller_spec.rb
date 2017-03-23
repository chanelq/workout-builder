require 'rails_helper'
require 'support/factory_girl'

RSpec.describe WorkoutsController do
  describe 'GET #index' do
    it 'renders valid JSON data of all workouts' do
      # json_spec gem
    end
  end

  describe 'GET #show' do
    it 'assigns the requested workout to @workout' do
    end
    it 'renders valid JSON data of @workout' do
    end
  end

  describe 'GET #new' do
    it 'assigns a new Workout to @workout' do
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested workout to @workout' do
    end
  end

  describe 'POST create' do
    context 'with valid attributes' do
      it 'saves the new workout in the database' do
      end
    end

    context 'with invalid attributes' do
      it 'does not save the new workout in the database' do
      end
    end
  end

  describe 'PUT update' do
    context 'with valid attributes' do
      it 'locates the requested @workout' do
      end
      it "changes @workout's attributes" do
      end
    end

    context 'with invalid attributes' do
      it 'locates the requested @workout' do
      end
      it "does not change @workout's attributes" do
      end
    end
  end

  describe 'DELETE destroy' do
    it 'deletes the workout' do
    end
  end
end
