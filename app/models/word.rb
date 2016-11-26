class Word < ApplicationRecord
  belongs_to :category
  has_many :answers, dependent: :destroy
  validates :content, presence: true,
    length: {maximum: Settings.leng_word}
    scope :recent, ->{order "create_at DESC"}
end
