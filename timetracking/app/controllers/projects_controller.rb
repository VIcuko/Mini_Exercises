class ProjectsController < ApplicationController
	
	def index
		@projects = Project.last_created_projects(30)
	end

	def new
		@project = Project.new
	end

	def create
		p = Project.new(name: params[:project][:name], description: params[:project][:description])
		p.save
		redirect_to '/projects'
	end

	def show
		@project=Project.find(params[:id])
		rescue ActiveRecord::RecordNotFound
		render 'no_hay_nada'
	end

	def edit
		@project=Project.find(params[:id])
	end

	def update
		new_project = params[:project]
		name = new_project[:name]
		description = new_project[:description]
				
		@project=Project.find(params[:id])
		@project.update_attributes(name: name, description: description)
		redirect_to '/projects'
	end

	def destroy
		project=Project.find(params[:id])
		project.destroy

		redirect_to '/projects'
	end
end
