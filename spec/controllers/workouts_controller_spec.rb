require 'rails_helper'
require 'support/factory_girl'

RSpec.describe WorkoutsController do
  $workout_data = nil
  let(:workout_data) { workout_data = JSON.parse(response.body, symbolize_names: true) }

  describe 'GET #index' do
    it 'renders valid JSON data of all workouts' do
      get :index
      expected = { name: 'Lunges', exercise_type: 'Strength Training', description: 'Do sets on each leg' }
      expect(workout_data.count).to be == 4
      expect(workout_data[1].except(:id).compact).to eq(expected)
    end
  end

  describe 'GET #show' do
    it 'renders valid JSON data for the requested workout' do
      get :show, id: 2
      expected = { name: 'Lunges', exercise_type: 'Strength Training', description: 'Do sets on each leg' }
      expect(workout_data.except(:id).compact).to eq(expected)
    end
  end

  describe 'POST create' do
    context 'with valid attributes' do
      it 'saves the new workout in the database' do
        workout_params = attributes_for(:workout)
        expect {
          post :create, workout: workout_params
        }.to change(Workout, :count).by(1)
        # add test for valid json
      end
      it 'returns valid JSON data for the new workout' do
      end
    end

    context 'with invalid attributes' do
      it 'does not save the new workout in the database' do
        workout_params = { name: nil, exercise_type: 20, sets: 'none'}
        expect {
          post :create, workout: workout_params
        }.to_not change(Workout, :count)
      end
    end
  end

  describe 'PUT update' do
    context 'with valid attributes' do
      it 'renders valid JSON data for the selected workout' do
      end
      it "changes the selected workout's attributes" do
      end
      it 'returns valid JSON data for the updated workout'
    end

    context 'with invalid attributes' do
      it 'renders valid JSON data for the selected workout' do
      end
      it "does not change the selected workout's attributes" do
      end
    end
  end

  describe 'DELETE destroy' do
    before :each do
      @workout = create(:workout)
    end
    it 'deletes the workout' do
      expect{
        delete :destroy, id: @workout
      }.to change(Workout, :count).by(-1)
    end
  end
end
