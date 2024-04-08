# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Category.create(title: "Programm")
Category.create(title: "Math")

Test.create(title: "Ruby", level: 0, category_id: 1)
Test.create(title: "Java", level: 0, category_id: 1)
Test.create(title: "Logarifm", level: 0, category_id: 2)
Question.create(body: "WHat is Ruby?", test_id: 1)
Answer.create(body: "tort", correct: false,  question_id: 1)
User.create(name: "Anna", login: "deiva", password: "323dsfdsf233S_")