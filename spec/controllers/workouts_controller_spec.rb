RSpec.describe WorkoutsController do
  describe 'GET #index' do
    it 'populates JSON data of all workouts'
  end

  describe 'GET #show' do
    it 'assigns the requested workout to @workout'
    it 'populates JSON data of @workout'
  end

  describe 'GET #new' do
    it 'assigns a new Workout to @workout'
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves the new workout in the database'
    end

    context 'with invalid attributes' do
      it 'does not save the new workout in the database'
    end
  end
end
