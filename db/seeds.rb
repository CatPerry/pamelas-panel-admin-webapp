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
  "S" + rand(10000...199999).to_s
end

prng = Random.new
randDeg = ["Phd", "Masters", "Bachelors"]
randDegwHS = ["Phd", "Masters", "Bachelors", "High School"]

randFirstNames = %w(Dulce Melissa Elba Antonietta Faith Jeromy Francisco Selene Shavonda Vicky Priscila Shin Jamee Yajaira Darrick Teodoro Angel Refugio Lupita Manual Cyril Carina Sondra Demetra Treva Melani Love Dawna Wilma Deb)

randLastNames = %w(Denny Rhea Aldo Emory Dante Leonida Kaylene Gaylord Isobel Aura Galen Florida Ladawn Mickey Tom Virgina Donette Kina Carlee James Timika Emeline Micha Berenice Emery Cliff Shalon Gene Elvina Margeret)

courseNames = %w(Software-Engineering Chemistry Molecular-Biology Physics Singing Break-Dancing)

cohortNames = %w(Edge-Case SEI-April-5 Trekkies Uppities Neer-Do-Wells)

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
    student_passport: "#{student_passport}",
    cohort: "#{cohortNames.sample}"
  )
end

puts "You just created 10 students"

5.times do |course|
  Course.create(
    name: "#{courseNames.sample}",
    hours: prng.rand(5..20),
  )
end

puts "You just created 5 courses"

5.times do |cohort|
  Cohort.create(
    name: "#{cohort.sample}",
    start_date: prng.rand(5..20),
    end_date: prng.rand(5..20),
    course_id: courseName.id.rand
  )
end

puts "You just created 5 cohorts"
