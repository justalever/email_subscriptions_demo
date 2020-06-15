class TaskMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.task_mailer.task_created.subject
  #
  def task_created
    @task = params[:task]
    @user = params[:user]
    @author = params[:author]

    mail to: @user.email, subject: "#{@task.project.title}: A new task was created by #{@author.name}"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.task_mailer.task_completed.subject
  #
  def task_completed
    @task = params[:task]
    @user = params[:user]
    @author = params[:author]

    mail to: @user.email, subject: "#{@task.project.title}: A task was completed by #{@author.name}"
  end
end
