class ProjectsController < ApplicationController
	
	def index
		@projects = Project.last_created_projects(2)
	end

	def new
		@project = Project.new
	end

	def create
		p = Project.new(name: params[:project][:name], description: params[:project][:description])
		p.save
		redirect_to '/projects'
	end
end
