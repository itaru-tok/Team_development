module Users
  class SessionsController < Devise::SessionsController
    def guest_sign_in
      # ゲストアカウントでログイン
      sign_in User.guest
      # トップページへリダイレクト
      redirect_to root_path, notice: t(".notice")
    end
  end
end
