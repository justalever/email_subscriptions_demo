class AddEmailNotificationsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :notify_when_added_to_project, :boolean, default: true
    add_column :users, :notify_when_task_created, :boolean, default: true
    add_column :users, :notify_when_task_completed, :boolean, default: true
  end
end
