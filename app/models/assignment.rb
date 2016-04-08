class Assignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :task
  def my_tasks
    self.task
    # x = Task.where(".id" => self.task_id)
    # x.each do |p|
    #   y = p.title
    # end
    # return y
  end
end
