class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path, notice: "The Job #{@job.name} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path, notice: "The Job #{@job.name} has been deleted."
  end
private 
  def job_params
    params.require(:job).permit(:name, :Joblist)
    #params.require(:job).permit(:Joblist)
  end
end
