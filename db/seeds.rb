# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Medication.create!(name: "prinvil", amount: 1, measurement: "tablet", frequency: 1)

Reminder.create!(date: "tuesdays", time: 2, frequency: 1)
