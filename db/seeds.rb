# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Capstone.create(name: "Testing One", description: "I hope this works!", url: "http://www.example.com", screenshot: "http://www.screenshot.com", student_id: 1)

Student.create!(first_name: "Maria", last_name: "Smith", password: "password", email: "maria@example.com", phone: "543-345-6789", bio: "This is a lot about this person.", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", website_url: "myawesomesite.com", resume_url: "myresume.com", github_url: "github.com/person", photo: "imageurl.com")
Student.create!(first_name: "James", last_name: "Goldberg", password: "password", email: "james@example.com", phone: "543-345-6789", bio: "This is a lot about this person.", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", website_url: "myawesomesite.com", resume_url: "myresume.com", github_url: "github.com/person", photo: "imageurl.com")
Student.create!(first_name: "Mark", last_name: "Goldberg", password: "password", email: "mark@example.com", phone: "543-345-6789", bio: "This is a lot about this person.", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", website_url: "myawesomesite.com", resume_url: "myresume.com", github_url: "github.com/person", photo: "imageurl.com")
Capstone.create(name: "Testing One", description: "I hope this works!", url: "http://www.example.com", screenshot: "http://www.screenshot.com", student_id: 1)
Capstone.create(name: "Testing Two", description: "Good Description", url: "http://www.example.com", screenshot: "http://www.screenshot.com", student_id: 2)
Capstone.create(name: "Testing Three", description: "Good Description", url: "http://www.example.com", screenshot: "http://www.screenshot.com", student_id: 3)
Skill.create(skill_name: "HTML", student_id: 1)
Skill.create(skill_name: "Ruby", student_id: 2)
Skill.create(skill_name: "CSS", student_id: 3)
Experience.create(start_date: Date.new(2020, 6, 5), end_date: Date.new(2020, 6, 5), job_title: "Developer", company_name: "ACME", details: "great job to have, learned a lot", student_id: 1)
Experience.create(start_date: Date.new(2020, 6, 5), end_date: Date.new(2020, 6, 5), job_title: "Developer", company_name: "ACME", details: "great job to have, learned a lot", student_id: 2)
Experience.create(start_date: Date.new(2020, 6, 5), end_date: Date.new(2020, 6, 5), job_title: "Developer", company_name: "ACME", details: "great job to have, learned a lot", student_id: 3)
Education.create(start_date: Date.new(2000, 6, 5), end_date: Date.new(2003, 6, 5), degree: "Bachelors of Science", university: "State University", details: "Graduated with Honors", student_id: 1)
Education.create(start_date: Date.new(2000, 6, 5), end_date: Date.new(2003, 6, 5), degree: "Bachelors of Science", university: "State University", details: "Graduated with Honors", student_id: 2)
Education.create(start_date: Date.new(2000, 6, 5), end_date: Date.new(2003, 6, 5), degree: "Bachelors of Science", university: "State University", details: "Graduated with Honors", student_id: 3)
