class AssignmentController < ApplicationController
  def add
    @user = User.find_by_id(params[:user_id])
    assignment = Assignment.new
    assignment.user_id = @user.id
    assignment.task_id = params[:task_id]
    assignment.save
    redirect_to "/user/#{@user.id}/view"
  end
end