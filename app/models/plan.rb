class Plan < ActiveRecord::Base
    belongs_to :user
    
    def task_completed
      milestone = [DateTime.now, deadline.to_datetime].min
      # UserLog.where({ :created_at => plan.created_at..Time.now}, {:user => self}).count
      user.tests.where({ :created_at => self.created_at...milestone}).sum("point")
    end
    
    def task_completed_chart_data
        milestone = [DateTime.now, deadline.to_datetime].min
      # UserLog.where({ :created_at => plan.created_at..Time.now}, {:user => self}).count
      user.tests.where({ :created_at => self.created_at..milestone}).group("strftime('%Y-%m-%d', created_at)").sum("point")
      # user.user_logs.group_by_day(:created_at, range: self.created_at..DateTime.now).count
    end
    
    def is_over?
        if (Date.today > deadline) then return true
        else return false
        end
    end
    
    def is_completed
        if (task_completed >= how_many) then return true
        else return false
        end
    end

    def day_remaining
        deadline.to_date - Date.today + 1
    end
    
end
