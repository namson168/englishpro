module Recorduser
  def record_activity(user, act, actID, status, logdata)
    @ulog = UserLog.new
    @ulog.user = user
    @ulog.act = act
    @ulog.act_id = actID
    @ulog.status = status
    @ulog.log_data = logdata
    @ulog.save
  end
end