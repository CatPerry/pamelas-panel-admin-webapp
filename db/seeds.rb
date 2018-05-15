# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
prng = Random.new
arr = ["Phd", "Masters", "Bachelors"]
randDeg = arr.sample

1.times do |admin|
  Admin.create!(
    username: "Cat",
    password: "12345"
  )
end
puts "You just created 1 admin"

10.times do |teacher|
  Teacher.create!(
    first_name: "First Name #{teacher}",
    last_name: "Last Name #{teacher}",
    age: prng.rand(25..75),
    salary: prng.rand(45000..80000),
    education: "#{randDeg}",
    image: "http://placehold.it/200x200",
    # teacher_id: prng.rand(10000000...19999999)
  )
end

puts "You just created 10 teachers"

10.times do |student|
  Student.create!(
    first_name: "First Name #{student}",
    last_name: "Last Name #{student}",
    age: prng.rand(5..18),
    education: prng.rand(1..12),
    image: "http://placehold.it/200x200",
    # student_id: prng.rand(20000000...29999999)
  )
end

puts "You just created 10 students"

5.times do |course|
  Course.create!(
    name: "#{course}",
    hours: "8-4"
  )
end
puts "You just created 5 courses"
