# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

10.times do
  Article.create!(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraph(sentence_count: 10),
    created_at: Faker::Time.between(from: 30.days.ago, to: Time.now),
    updated_at: Faker::Time.between(from: 7.days.ago, to: Time.now)
  )
end
