class WorkoutsController < ApplicationController

  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  #Get all workouts created_at dates descending
  def index
    @workouts = Workout.all.order("created_at desc")
  end

  #The action that shows the workout
  def show
  end

  #The action that creates a new workout and directs to the new view
  def new
    @workout = Workout.new
  end

  #The action that actually saves the workout
  def create
    @workout = Workout.new(workout_params)
    if @workout.save
       flash[:success] = "Workout was successfully created"
      redirect_to root_path
    else
      render 'new'
    end
  end

  #The action that grabs the workout and show the edit view
  def edit
     @workout = Workout.find(params[:id])
  end

  #The action that takes the parameters and updates it in the db
  def update
    if @workout.update(workout_params)
      redirect_to @workout
      flash[:success] = "Workout was successfully updated"
    else
      render 'edit'
    end
    # @workout = Workout.find(params[:id])
    # @workout.update(workout_params)
    #  flash[:success] = "Workout was successfully updated"
    # redirect_to root_path
  end

  #Destroys the workout when you click delete
  def destroy
    @workout.destroy
    flash[:success] = "Workout was successfully deleted"
    redirect_to root_path
  end

 #Keep the params and such private and secure
 private
  def set_workout
      @workout = Workout.find(params[:id])
  end

 def workout_params
  params.require(:workout).permit(:area_worked_out, :workout_length, :mood, :notes)
 end
end
