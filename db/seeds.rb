# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create([{ title: :frotend }, { title: :backend }, { title: :Database }])

 tests = Test.create(
  [{ title: 'Ruby', level: 1, category_id: categories[1].id },
   { title: 'Ruby on rails', level: 2, category_id: categories[1].id },
   { title: 'SQl', level: 2, category_id: categories[2].id },
   { title: 'php', level: 1, category_id: categories[1].id},
   { title: 'laravel', level: 2, category_id: categories[1].id }]
)
