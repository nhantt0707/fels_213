# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
30.times do |n|
    content = "Word_#{n+1}"
    Word.create!(content: content, category_id: 1)

    4.times do |m|
      content = "Answer_#{m+1}"
      Answer.create!(content: content,
        is_correct: m == 1 ? 1 : 0, word_id: n)
    end
 end
