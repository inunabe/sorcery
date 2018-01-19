class UserMailer < ApplicationMailer

  def activation_needed_email(user)
    @user = user
    @url  = "http://localhost:3000/users/#{user.activation_token}/activate"
    mail(:to => user.email,
     :subject => "Welcome to My Awesome Site")
  end

  def activation_success_email
    @user = user
    @url  = "http://localhost:3000/login"
    mail(:to => user.email,
         :subject => "Your account is now activated")
  end
end
