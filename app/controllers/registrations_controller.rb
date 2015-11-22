class RegistrationsController < Devise::RegistrationsController
  include Recorduser
  
  def create
    super
    record_activity(@user, "登録", "", "完成", DateTime.now)
  end

  def update
    super
    record_activity(current_user, "プロフィール修正", "", "完成", DateTime.now)
  end
end 