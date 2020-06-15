# Preview all emails at http://localhost:3000/rails/mailers/task_mailer
class TaskMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/task_mailer/task_create
  def task_created
    TaskMailer.with(task: Task.last, user: User.first, author: User.last).task_created
  end

  # Preview this email at http://localhost:3000/rails/mailers/task_mailer/task_completed
  def task_completed
    TaskMailer.with(task: Task.last, user: User.first, author: User.last).task_completed
  end

end
