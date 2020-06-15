# Preview all emails at http://localhost:3000/rails/mailers/project_mailer
class ProjectMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/project_mailer/user_added_to_project
  def user_added_to_project
    ProjectMailer.with(project: Project.last, user: User.first, author: User.last).user_added_to_project
  end

end
