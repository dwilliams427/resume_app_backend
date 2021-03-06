class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception, if: -> { request.format.html? }
  protect_from_forgery with: :null_session

  def current_student
    auth_headers = request.headers["Authorization"]
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: "HS256" }
        )
        Student.find_by(id: decoded_token[0]["student_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  helper_method :current_student

  def authenticate_student
    unless current_student
      render json: { message: "ERROR: unauthorized. Need to be signed in" }, status: :unauthorized
    end
  end

  #authenticate admin
  def authenticate_admin
    unless current_student && current_student.admin
      render json: { message: "ERROR: unauthorized. Need to be signed in" }, status: :unauthorized
    end
  end
end
