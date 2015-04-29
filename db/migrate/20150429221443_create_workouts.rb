class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.text :area_worked_out
      t.integer :workout_length
      t.string :mood
      t.text :notes
      t.timestamps null: false
    end
  end
end
