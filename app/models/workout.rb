class Workout < ActiveRecord::Base
  belongs_to :users
  validates_presence_of  :area_worked_out, :workout_length
end
