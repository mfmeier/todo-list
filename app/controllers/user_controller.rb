class UserController < ApplicationController
  def home
    user = current_user
    @assignment = Assignment.where("user_id" => user.id)
    @tasks = user.tasks
    redirect_to ("/user/main")
  end
  def view
    @user = User.find_by_id(params[:id])
    @assigned = Assignment.where("user_id" => @user.id)
    
    user = current_user
    @assignments = user.assignments
    @task = Task.all
    @family = User.where("family_id" => user.family_id)

 
    render 'view'
  end
  def settings
    @user = current_user
  end
end