class ResultLesson < ApplicationRecord
  belongs_to :lesson
  belongs_to :answer
  belongs_to :word
end
