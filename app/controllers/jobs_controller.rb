class JobsController < ApplicationController
  protect_from_forgery with: :null_session, only: [:create]

  def create
    render json: { id: 123 }, status: 202
  end
end