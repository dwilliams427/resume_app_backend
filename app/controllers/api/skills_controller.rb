class Api::SkillsController < ApplicationController
  before_action :authenticate_user

  def index
    @skills = Skill.all
    render "index.json.jb"
  end

  def show
    skill_id = params[:id]
    @skill = Skill.find(skill_id)
    render "show.json.jb"
  end

  def create
    @skill = Skill.new(
      skill_name: params[:skill_name],
      student_id: current_user.id,
    )
    if @skill.save
      render "show.json.jb"
    else
      render json: { error: @skill.errors.full_messages }
    end
  end

  def update
    skill_id = params[:id]
    @skill = Skill.find_by(id: skill_id)

    @skill.skill_name = params[:skill_name] || @skill.skill_name

    if @skill.save
      render "show.json.jb"
    else
      render json: { error: @skill.errors.full_messages }
    end
  end

  def destroy
    skill_id = params[:id]
    skill = Skill.find_by(id: skill_id)
    skill.destroy
    render json: { message: "This skill was successfully deleted." }
  end
end
