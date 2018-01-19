Rails.application.config.sorcery.submodules = [:remember_me, :user_activation, :reset_password]

Rails.application.config.sorcery.configure do |config|

  config.user_config do |user|
    user.remember_me_for = 1209600 #2週間永続ログイン
    user.user_activation_mailer = UserMailer #メール返信によるユーザー認証
    user.reset_password_mailer = UserMailer #メールを使用したパスワードリセット機能
  end


  config.user_class = 'User'
end
