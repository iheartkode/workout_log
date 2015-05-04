class WorkoutsController < ApplicationController

  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  def index
    @workouts = Workout.all.order("created_at desc")
  end

  def show

  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
       flash[:success] = "Workout was successfully created"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])
    @workout.update(workout_params)
     flash[:success] = "Workout was successfully updated"
    redirect_to root_path
  end

  def destroy
    @workout.destroy
    flash[:success] = "Workout was successfully deleted"
    redirect_to root_path
  end

 private
  def set_workout
      @workout = Workout.find(params[:id])
  end

 def workout_params
  params.require(:workout).permit(:area_worked_out, :workout_length, :mood, :notes)
 end
end
