class Lesson < ActiveRecord::Base
  has_many :words, dependent: :destroy
  has_many :tests, dependent: :destroy

  validates :name, presence: true, length: {maximum: 20}, uniqueness: true
  validates :description, length: {maximum: 200}
end
