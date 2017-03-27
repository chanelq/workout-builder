class WorkoutsController < ApplicationController

  EXCLUDED_FIELDS = [:created_at, :updated_at]

  def index
    render json: Workout.all.to_json(except: EXCLUDED_FIELDS)
  end

  def show
    render json: Workout.find(params[:id]).to_json(except: EXCLUDED_FIELDS)
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      render json: @workout.to_json(except: EXCLUDED_FIELDS)
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

  private

  def workout_params
    params.require(:workout)
          .permit(:name,
                  :exercise_type,
                  :description,
                  :sets,
                  :reps,
                  :rest,
                  :duration,
                  :distance)
  end
end
