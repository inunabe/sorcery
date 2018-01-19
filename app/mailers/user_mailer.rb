class UserMailer < ApplicationMailer

  def activation_needed_email(user)#メアドいれて最初に送られてくるメール
    @user = user
    @url  = "http://localhost:3000/users/#{user.activation_token}/activate"
    mail(:to => user.email,
     :subject => "Welcome to My Awesome Site")
  end

  def activation_success_email#正常にメール認証できましたよメール
    @user = user
    @url  = "http://localhost:3000/login"
    mail(:to => user.email,
         :subject => "Your account is now activated")
  end

  def reset_password_email(user)#パスワードリセットしたときに送られるメール
    @user = User.find user.id
    @url = edit_password_reset_url(@user.reset_password_token)
    mail(:to => user.email,  :subject => "Your password has been reset")
  end
end
