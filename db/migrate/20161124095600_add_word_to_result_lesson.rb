class AddWordToResultLesson < ActiveRecord::Migration[5.0]
  def change
    add_reference :result_lessons, :word, foreign_key: true
  end
end
