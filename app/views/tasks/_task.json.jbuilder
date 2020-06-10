json.extract! task, :id, :body, :project_id, :complete, :created_at, :updated_at
json.url project_task_url(task.project, task, format: :json)
