class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :type
      t.string :description
      t.integer :sets
      t.integer :reps
      t.integer :rest
      t.integer :duration
      t.string :distance

      t.timestamps
    end
  end
end
