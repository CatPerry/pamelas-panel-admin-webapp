# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def teacher_passport
  "T" + rand(10000...199999).to_s
end

def student_passport
  "T" + rand(10000...199999).to_s
end

prng = Random.new
randDeg = ["Phd", "Masters", "Bachelors"]
randDegwHS = ["Phd", "Masters", "Bachelors", "High School"]

randFirstNames = %w(Dulce Melissa Elba Antonietta Faith Jeromy Francisco Selene Shavonda Vicky Priscila Shin Jamee Yajaira Darrick Teodoro Angel Refugio Lupita Manual Cyril Carina Sondra Demetra Treva Melani Love Dawna Wilma Deb)

randLastNames = %w(Denny Rhea Aldo Emory Dante Leonida Kaylene Gaylord Isobel Aura Galen Florida Ladawn Mickey Tom Virgina Donette Kina Carlee James Timika Emeline Micha Berenice Emery Cliff Shalon Gene Elvina Margeret)

# def teacher_passport
#   p `T#{rand(10000...19999)}`
# end

1.times do |admin|
  Admin.create(
    username: "Cat",
    password: "12345"
  )
end

puts "You just created 1 admin"

10.times do |teacher|
  Teacher.create(
    first_name: randFirstNames.sample,
    last_name: randLastNames.sample,
    age: prng.rand(25..75),
    salary: prng.rand(45000..80000),
    education: "#{randDeg.sample}",
    image: "http://placehold.it/200x200",
    teacher_passport: "#{teacher_passport}"
  )
end

puts "You just created 10 teachers"

10.times do |student|
  Student.create(
    first_name: randFirstNames.sample,
    last_name: randLastNames.sample,
    age: prng.rand(15..35),
    education: "#{randDegwHS.sample}",
    image: "http://placehold.it/200x200",
    student_passport: "#{student_passport}"
  )
end

puts "You just created 10 students"

5.times do |course|
  Course.create(
    name: "#{course}",
    hours: prng.rand(5..20),
  )
end

puts "You just created 5 courses"
