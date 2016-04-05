class TasksController < ApplicationController
  def new
    @tasks = Task.all
  end
  def create
    @task = Task.new
    @task.title = params[:title]
    @task.save
    @assignment = Assignment.new
    @assignment.user_id = current_user.id
    @assignment.task_id = @task.id
    @assignment.save

    redirect_to "/tasks/main"
  end
  def index
    user = current_user
    @assignment = Assignment.where("user_id" => user.id)
    @task = Task.all #still all the tasks not just this users
    redirect_to ("/tasks/index")
  end
  def complete
    @task = Task.find_by_id(params[:id])
    @task.completed = true
    @task.save
    redirect_to ("/tasks/main")
  end
  def welcome
    user = current_user
    @task = Task.where(this is that)
    # I want to write @task = user.assignments.task
    redirect_to ("/")
  end
end