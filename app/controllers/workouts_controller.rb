class WorkoutsController < ApplicationController

  EXCLUDED_FIELDS = [:created_at, :updated_at]

  def index
    # render json: Workout.all.to_json(except: EXCLUDED_FIELDS)
    render json: Workout.all
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
    workout = Workout.update(params[:id], workout_params)
    if workout.errors.messages.empty?
      render json: workout.to_json(except: EXCLUDED_FIELDS)
    else
      render json: ApplicationHelper.json_errors(workout)
    end
  end

  def destroy
    if Workout.delete(params[:id]) == 0
      render json: { errors: ['The workout could not be deleted'] }
    else
      head :ok
    end
  end

  private

  def workout_params
    params.require(:workout)
          .permit(:id,
                  :name,
                  :exercise_type,
                  :description,
                  :sets,
                  :reps,
                  :rest,
                  :duration,
                  :distance)
  end
end
