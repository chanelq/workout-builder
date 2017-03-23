class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    respond_to do |format|
      format.json do
        render json: @workouts.to_json
      end
    end
  end

  def show
    @workout = Workout.find(params[:id])
    respond_to do |format|
      format.json do
        render json: @workout.to_json
      end
    end
  end

  def new
    @workout = Workout.new
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def create
    @workout = Workout.new(workout_params)
    if @test_type.save
      redirect_to #
    else
      #
    end
  end

  def update
    @workout = Workout.find(params[:id])
    if @workout.update(workout_params)
      redirect_to #
    else
      #
    end
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    redirect_to #
  end
end
