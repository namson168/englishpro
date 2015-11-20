class Word < ActiveRecord::Base
  belongs_to :lesson
  has_many :answers, dependent: :destroy

  accepts_nested_attributes_for :answers, allow_destroy: true,
    reject_if: proc {|a| a[:content].blank?}
  validates :content, presence: true, uniqueness: true
  validate :check_correct_answer
  
  
  private
  def check_correct_answer
    errors.add :base, "not choice correct answers" if answers.select{|opt| opt.correct}.blank?
  end

end
