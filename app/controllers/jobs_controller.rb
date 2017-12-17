class JobsController < ApplicationController
  protect_from_forgery with: :null_session, only: [:create]

  def create
    job = Job.create job_params
    render json: { id: job.id }, status: 202
  end

  private

  def job_params
    params.require(:job).permit(urls: [])
  end
end