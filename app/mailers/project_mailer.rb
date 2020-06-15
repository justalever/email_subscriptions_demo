class ProjectMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.project_mailer.user_added_to_project.subject
  #
  def user_added_to_project
    @user = params[:user]
    @project = params[:project]
    @author = params[:author]

    mail to: @user.email, subject: "#{@author.name} added you to #{@project.title}"
  end
end
