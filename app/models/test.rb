class Test < ActiveRecord::Base
  belongs_to :user
  belongs_to :lesson
  
  has_many :results, dependent: :destroy
  accepts_nested_attributes_for :results

end
