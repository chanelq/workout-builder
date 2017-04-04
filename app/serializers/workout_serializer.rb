class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :exercise_type, :description, :sets, :reps, :rest, :duration, :distance
end
