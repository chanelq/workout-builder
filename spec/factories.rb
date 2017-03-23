FactoryGirl.define do
  factory :workout do
    name 'Long Run'
    type 'Cardio'
    description 'Run at a slow and comfortable pace. Distance is more important than time.'
    sets 1
    reps 1
    rest 0
    duration 240
    distance '20 miles'
  end
  factory :invalid_workout, parent: :workout do
    duration '120 mins'
    distance 5
  end
end
