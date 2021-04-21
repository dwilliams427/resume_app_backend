# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Capstone.create(name: "Testing One", description: "I hope this works!", url: "http://www.example.com", screenshot: "http://www.screenshot.com", student_id: 1)

Student.create!(first_name: "Maria", last_name: "Smith", password: "password", email: "maria@example.com", phone: "543-345-6789", bio: "This is a lot about this person.", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", website_url: "myawesomesite.com", resume_url: "myresume.com", github_url: "github.com/person", photo: "https://thumbs.dreamstime.com/b/image-beautiful-happy-young-blonde-woman-posing-isolated-over-blue-wall-background-holding-shopping-bags-black-friday-holiday-162657655.jpg")
Student.create!(first_name: "James", last_name: "Goldberg", password: "password", email: "james@example.com", phone: "543-345-6789", bio: "This is a lot about this person.", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", website_url: "myawesomesite.com", resume_url: "myresume.com", github_url: "github.com/person", photo: "https://thumbs.dreamstime.com/b/christmas-happy-boy-luxury-attractive-child-holiday-hair-square-photography-male-person-classic-shirt-business-little-man-173621263.jpg")
Student.create!(first_name: "Mark", last_name: "Goldberg", password: "password", email: "mark@example.com", phone: "543-345-6789", bio: "This is a lot about this person.", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", website_url: "myawesomesite.com", resume_url: "myresume.com", github_url: "github.com/person", photo: "https://previews.123rf.com/images/watman/watman1805/watman180502066/102573115-adult-bearded-man-in-a-suit-with-a-square-head-on-a-blue-background.jpg")
Student.create!(first_name: "Barbara", last_name: "Blunderbutt", password: "password", email: "barb@example.com", phone: "543-345-6789", bio: "Well, i couldn't possibly tell you about my personal business", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", website_url: "myawesomesite.com", resume_url: "myresume.com", github_url: "github.com/person", photo: "https://st.depositphotos.com/1043073/1218/i/600/depositphotos_12186995-stock-photo-woman-drop-leaves-in-autumn.jpg")
Student.create!(first_name: "Big", last_name: "Ange", password: "password", email: "big@example.com", phone: "543-345-6789", bio: "I'll never tell, NEVER.", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", website_url: "myawesomesite.com", resume_url: "myresume.com", github_url: "github.com/person", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0mdkNTljX14leEMlA3uFPa_AyATSlfDhM2w&usqp=CAU")
Student.create!(first_name: "Little", last_name: "Foot", password: "password", email: "littlefoot@example.com", phone: "543-345-6789", bio: "My mom is DEAD. :(", linkedin_url: "linkedin.com", twitter_handle: "twitter.com", website_url: "myawesomesite.com", resume_url: "myresume.com", github_url: "github.com/person", photo: "https://pyxis.nymag.com/v1/imgs/bd5/950/c4bfb9c94c44ed6eb3a76997abffdb3bba-land-before-time.rsquare.w1200.jpg")
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
