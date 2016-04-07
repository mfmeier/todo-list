class TasksController < ApplicationController
  def new
    @tasks = Task.all
  end
  def create
    @task = Task.new
    @task.title = params[:title]
    @task.completed = false
    @task.save
    # @assignment = Assignment.new
    # @assignment.user_id = current_user.id   #create the task brings you back
    # @assignment.task_id = @task.id     #then another form to fill the user assigned to the individual task....
    # @assignment.save

    render 'index'
  end
  def index #The sites welcome page
    @user = current_user
      

      

      @family = User.where("family_id" => @user.family_id)
      @my_assignments = Assignment.where("user_id" => @user.id)
      @task = Task.all   #I need this to be --- user.tasks
      @all_tasks = Task.all #still all the tasks not just this users
      render 'index'
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
  def edit
    task = Task.find_by_id(params[:id])
    render 'edit'
  end
  def add
    @user = current_user
    user = current_user
    @assignments = user.assignments
    @task = Task.all
    @family = User.where("family_id" => user.family_id)
    render "main"
  end
end