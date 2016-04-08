class Task < ActiveRecord::Base
  has_many :assignments
  def tasks_assignment
    Assignment.where("task_id" => self.id)
  end

end