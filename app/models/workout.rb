class Workout < ActiveRecord::Base
  validates_presence_of  :area_worked_out, :workout_length
end
