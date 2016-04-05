class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :user_id
      t.string :integer
      t.string :task_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
