require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  test "should not save workout without a area_worked_out" do
    workout = Workout.new
    assert_not workout.save, "saved the workout without area_worked_out"
  end
  
  test "should not save workout without a workout_length" do
    workout = Workout.new
    assert_not workout.save, "saved the workout without workout_length"
  end
end
