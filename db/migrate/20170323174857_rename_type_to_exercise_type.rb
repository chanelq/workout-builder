class RenameTypeToExerciseType < ActiveRecord::Migration[5.0]
  def change
    rename_column :workouts, :type, :exercise_type
  end
end
