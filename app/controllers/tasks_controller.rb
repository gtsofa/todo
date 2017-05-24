class TasksController < ApplicationController
  def new
    @task = Task.new # initialize a Task
  end
  def create
    @task = Task.create(task_params)
    redirect_to root_path # after creating redirect to home
  end
  private
  def task_params
    params.require(:task).permit(:title, :note, :completed)
  end
end
