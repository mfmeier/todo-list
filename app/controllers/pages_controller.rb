class PagesController < ApplicationController
  def mail
    @user = current_user
      @family = User.where("family_id" => @user.family_id) #I want a collection
      @my_assignments = Assignment.where("user_id" => @user.id) #want a collection
      @task = Task.all   #I need this to be --- user.tasks
      @all_tasks = Task.all #still all the tasks not just this users
    render 'mymail'
  end
end