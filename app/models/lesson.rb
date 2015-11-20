class Lesson < ActiveRecord::Base
  has_many :words, dependent: :destroy
  has_many :tests, dependent: :destroy

  validates :name, presence: true, length: {maximum: 20}, uniqueness: true
  validates :description, length: {maximum: 200}
  mount_uploader :picture, PictureUploader
  
  scope :ordered_by_create_at, ->{order "created_at DESC"}
  scope :search_lesson, ->search_lesson{where "name LIKE ?", "%#{search_lesson}%"}
  
  
  private
  def picture_size
   errors.add :picture, t("picture_error") if picture.size > Settings.picture_size.megabytes
  end
  
end
