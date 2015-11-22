class SessionsController < Devise::SessionsController
  include Recorduser
    
  def create
    super
    record_activity(current_user, "ログイン", "", "", DateTime.now)
  end

  def destroy
    record_activity(current_user, "ログアウト", "", "", DateTime.now)
    super
  end    
end