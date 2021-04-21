class Api::CapstonesController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @capstones = Capstone.all
    render "index.json.jb"
  end

  def show
    @capstone = Capstone.find(params[:id])
    render "show.json.jb"
  end

  def create
    @capstone = Capstone.new(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
      student_id: current_user.id,
    )

    # happy/sad path
    if @capstone.save
      render "show.json.jb" 
    else
      render json: { errors: @capstone.errors.full_messages }, status: 406
    end
  end
  
  def update
    @capstone = Capstone.find(params[:id])

    @capstone.name = params[:name] || @capstone.name
    @capstone.description = params[:description] || @capstone.description
    @capstone.url = params[:url] || @capstone.url
    @capstone.screenshot = params[:screenshot] || @capstone.screenshot

    if @capstone.save
      render "show.json.jb" 
    else
      render json: { errors: @capstone.errors.full_messages }, status: 406
    end
  end

  def destroy
    input = params[:id]
    @capstone = Capstone.find(params[:id])

    @capstone.destroy
    render json: {message: "capstone successfully destroyed"}
  end
end
