class UserMailer < ApplicationMailer

  def welcome(child)
    @child = child 

    mail(to: @child.email, subject: 'Bienvenue sur Widou')
  end
end
