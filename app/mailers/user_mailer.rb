class UserMailer < ApplicationMailer

  def welcome(user)
    @child = user 

    mail(to: @child.email, subject: 'Bienvenue sur Widou')
  end
end
