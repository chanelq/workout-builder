class Workout < ApplicationRecord
  validates :name,
            :exercise_type,
            :description,
            presence: true
end
