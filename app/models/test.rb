class Test < ActiveRecord::Base
  belongs_to :user
  belongs_to :lesson
  
  has_many :results, dependent: :destroy
  accepts_nested_attributes_for :results
  
  after_create :init_result
  before_save :correct_count
  validate :check_word, on: :create

  default_scope -> { order(created_at: :desc) }

  def correct_count
    self.point = results.select{|result| result.answer.try(:correct?)}.count
  end

  def time_remain
    self.results.count*Settings.
      time_per_word - (Time.zone.now - self.created_at).to_i
  end

  private
  def init_result
    self.lesson.words.not_learned(self.user).random_words.each do |word|
      self.results.create word_id: word.id
    end
  end

  def check_word
    @words = self.lesson.words.not_learned(self.user).random_words
    if @words.count < Settings.min_word_per_lesson
      errors.add :base, I18n.t("not_enough_word")
    end
  end
  
  
  
end
