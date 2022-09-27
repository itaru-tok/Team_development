class ApplicationController < ActionController::Base
  # :authenticate_user!(非ログイン時は、トップページにリダイレクト)
  before_action :authenticate_user!
end
