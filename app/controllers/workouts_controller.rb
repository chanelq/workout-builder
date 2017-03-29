class WorkoutsController < ApplicationController

  EXCLUDED_FIELDS = [:created_at, :updated_at]

  def index
    render json: Workout.all.to_json(except: EXCLUDED_FIELDS)
  end

  def show
    render json: Workout.find(params[:id]).to_json(except: EXCLUDED_FIELDS)
  end

  def create
    workout = Workout.new(workout_params)
    if workout.save
      render json: workout.to_json(except: EXCLUDED_FIELDS)
    else
      render json: ApplicationHelper.json_errors(workout)
    end
  end

  def update
    if Workout.find(params[:id]).update(workout_params)
      #
    else
      render json: ApplicationHelper.json_errors(workout)
    end
  end

  def destroy
    Workout.find(params[:id]).destroy
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
