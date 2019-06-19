# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 10.times do
#   List.create!(
#     name: Faker::Company.buzzword,
#     shared_with: Faker::Internet.email,
#     user_id: 3
#   )
# end


User.destroy_all
Search.destroy_all
Hiring.destroy_all
Company.destroy_all





50.times do
  Company.create!(
    name: Faker::Company.name,
  )
end


250.times do
  Hiring.create!(
     job_title: Faker::Job.title,
     job_field: Faker::Job.field,
     seniority: Faker::Job.seniority,
     job_position: Faker::Job.position,
     job_key_skill: Faker::Job.key_skill,
     job_employment_type: Faker::Job.employment_type,
     job_education_level: Faker::Job.education_level,
     company: Company.all.sample
     # need to put in the company id here
      )
    end

    100.times do
      User.create(
        name: Faker::FunnyName.name,
        username: Faker::FunnyName.name,
        password: "123",
        search: Hiring.all.sample.job_title
      )

# greg = User.create(name: "Greg", username: "Dwire", password: 'pass123')
    end


    100.times do
      Search.create(user: User.all.sample,  hiring: Hiring.all.sample)
    end
