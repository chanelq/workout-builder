FactoryGirl.define do
  factory :workout do
    name 'Long Run'
    exercise_type 'Cardio'
    description 'Run at a slow and comfortable pace. Distance is more important than time.'
    sets 1
    reps 1
    rest 0
    duration 240
    distance '20 miles'
  end
end
