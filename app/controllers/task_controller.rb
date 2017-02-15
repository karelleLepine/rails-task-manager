class TaskController < ApplicationController
  def index
    @task = Task.all
    #to show them all
  end

  def show
    @task = Task.find(params[:id])
#to show with one ID
end

def new
  @task = Task.new
    #generate the url with the form
  end

  def create
    #create a new task
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
   @task = Task.find(params[:id])
    @task.update(task_params) # We'll see that in a moment.
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end


  private

  def task_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:task).permit(:title, :description)
  end
end
