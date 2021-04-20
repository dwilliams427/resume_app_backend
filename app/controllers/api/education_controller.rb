class Api::EducationController < ApplicationController
  # before_action :authenticate_user, except: [:index, :show]

  def index
    @education = Education.all
    render "index.json.jb"
  end

  def show
    education_id = params[:id]
    @education = Education.find(education_id)
    render "show.json.jb"
  end

  def create
    @education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university: params[:university],
      details: params[:details],
      # student_id: current_user.id,
    )
    #happy/sad path
    if @education.save
      render "show.json.jb"             #happy path
    else
      render json: { errors: @education.errors.full_messages }, status: 406                       #sad path
    end
  end

  def update
    education_id = params[:id]
    @education = Education.find_by(id: education_id)

    @education.start_date = params[:start_date] || @education.start_date
    @education.end_date = params[:end_date] || @education.end_date
    @education.degree = params[:degree] || @education.degree
    @education.university = params[:university] || @education.university
    @education.details = params[:details] || @education.details

    #happy/sad path
    if @education.save
      render "show.json.jb"             #happy path
    else
      render json: { errors: @education.errors.full_messages }, status: 406                       #sad path
    end
  end

  def destroy
    education_id = params[:id]
    @education = Education.find_by(id: education_id)

    @education.destroy
    render json: { message: "deleted education" }
  end
end
