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
Skill.create(skill_name: "Javascript", student_id: 4)
Skill.create(skill_name: "Python", student_id: 5)
Skill.create(skill_name: "SQL", student_id: 6)
Experience.create(start_date: Date.new(2020, 6, 5), end_date: Date.new(2021, 6, 5), job_title: "Teacher", company_name: "Highland High School", details: "Teaching 10th grade", student_id: 1)
Experience.create(start_date: Date.new(2020, 6, 5), end_date: Date.new(2021, 6, 5), job_title: "Astronaut", company_name: "NASA", details: "walked on the moon a few times. NBD", student_id: 2)
Experience.create(start_date: Date.new(2020, 6, 5), end_date: Date.new(2021, 6, 5), job_title: "Nurse", company_name: "Kaiser", details: "on the front lines of covid-19", student_id: 3)
Experience.create(start_date: Date.new(2020, 6, 5), end_date: Date.new(2021, 6, 5), job_title: "Software Developer", company_name: "Amazon", details: "I am worked to the bone. please send help", student_id: 4)
Experience.create(start_date: Date.new(2020, 6, 5), end_date: Date.new(2021, 6, 5), job_title: "Tech Lead", company_name: "Google", details: "lots of tech stuff you wouldnt understand", student_id: 5)
Experience.create(start_date: Date.new(2020, 6, 5), end_date: Date.new(2021, 6, 5), job_title: "Influencer", company_name: "Self-employed", details: "Youtube channel where I make hella moneys", student_id: 6)
Education.create(start_date: Date.new(2000, 6, 5), end_date: Date.new(2003, 6, 5), degree: "Bachelors of English", university: "Ohio State University", details: "Graduated with Honors", student_id: 1)
Education.create(start_date: Date.new(2000, 6, 5), end_date: Date.new(2003, 6, 5), degree: "Masters of Space Science", university: "Cal State LA University", details: "Graduated with Honors", student_id: 2)
Education.create(start_date: Date.new(2000, 6, 5), end_date: Date.new(2003, 6, 5), degree: "Bachelors of Biology", university: "Azusa Pacific University", details: "Graduated with Honors", student_id: 3)
Education.create(start_date: Date.new(2000, 6, 5), end_date: Date.new(2003, 6, 5), degree: "Bachelors of Computer Science", university: "UC Berkeley", details: "Graduated with Honors", student_id: 4)
Education.create(start_date: Date.new(2000, 6, 5), end_date: Date.new(2003, 6, 5), degree: "Bachelors of Computer Science", university: "Stanford University", details: "Graduated with Honors", student_id: 5)
Education.create(start_date: Date.new(2000, 6, 5), end_date: Date.new(2003, 6, 5), degree: "Bachelors of Influence", university: "Swag University", details: "Graduated with Honors", student_id: 6)
