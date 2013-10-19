class AdminController < ApplicationController
  def index
  	@users = User.all
  	@departments = Department.all
  	@jobs = Job.all
  end
end
