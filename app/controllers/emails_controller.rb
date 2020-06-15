class EmailsController < ApplicationController
  def unsubscribe
    user = User.find_by_unsubscribe_hash(params[:unsubscribe_hash])

    case params[:subscription]
      when "added_to_project"
        @reason = "being added to projects"
        user.update(notify_when_added_to_project: false)
      when "task_created"
        @reason = "new tasks"
        user.update(notify_when_task_created: false)
      when "task_completed"
        @reason = "completing tasks"
        user.update(notify_when_task_completed: false)
      end
  end
end
