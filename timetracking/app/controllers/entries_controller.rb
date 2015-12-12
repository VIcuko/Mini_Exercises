class EntriesController < ApplicationController
	def index
		@project=Project.find(params[:project_id])
		@entries=@project.entries
		@entries_this_month=@project.entries_this_month(Time.now.month,Time.now.year)
		@total_hours=@project.how_many_hours
		@total_hours_this_month=@project.how_many_hours_this_month(Time.now.month,Time.now.year)
	end

	def new
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new
	end

	def create
		binding.pry
	end
end