class ApplicationController < ActionController::Base
  before_action :require_login #(ログイン必須)

  protect_from_forgery with: :exception

  private
  def not_authenticeted
    redirect_to login_path, alert: "please login first"
  end
end
