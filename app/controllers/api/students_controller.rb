class Api::StudentsController < ApplicationController
  before_action :authenticate_student, except: [:index, :show]

  def index
    @students = Student.all
    render "index.json.jb"
  end

  def show
    student_id = params[:id]
    @student = Student.find(params[:id])
    render "show.json.jb"
  end

  def create
    student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      phone: params[:phone],
      bio: params[:bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      website_url: params[:website_url],
      github_url: params[:github_url],
      photo: params[:image_url],
    )
    if student.save
      render json: { message: "student created successfully" }, status: :created
    else
      render json: { errors: student.errors.full_messages }, status: :bad_request
    end
  end

  def update
    student_id = params[:id]
    @student = Student.find_by(id: student_id)
    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name
    @student.email = params[:email] || @student.email
    @student.phone = params[:phone] || @student.phone
    @student.bio = params[:bio] || @student.bio
    @student.linkedin_url = params[:linkedin_url] || @student.linkedin_url
    @student.twitter_handle = params[:twitter_handle] || @student.twitter_handle
    @student.website_url = params[:website_url] || @student.website_url
    @student.github_url = params[:github_url] || @student.github_url
    @student.photo = params[:image_url] || @student.photo
    if params[:password]
      @student.password = params[:password] || @student.password
      @student.password_confirmation = params[:password_confirmation] || @student.password_confirmation
    end
    #happy/sad path
    if @student.save
      render json: { message: "you did it" }
    else
      render json: { error: @student.errors.full_messages }, status: 400
    end
  end

  def destroy
    student_id = params[:id]
    @student = Student.find(student_id)
    @student.destroy
    render json: { message: "student DESTROYED" }
  end
end
