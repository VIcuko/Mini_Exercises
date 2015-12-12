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
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new(entry_params)
		if @entry.save
			redirect_to "/projects/#{@project.id}/entries"
		else
			render "new"
		end
	end

	def edit
		@project = Project.find(params[:project_id])
		@entry = @project.entries.find(params[:id])
	end

	def update
		@project = Project.find(params[:project_id])
		@entry = @project.entries.find(params[:id])
		@entry.update_attributes(entry_params)
		if @entry.update_attributes(entry_params)
			flash[:notice] = "Entry updated!"
			redirect_to project_entries_path(@project)
		else
			@errors = @entry.errors.full_messages
			render :edit
		end
	end		

	def destroy
		project=Project.find(params[:project_id])
		entry=project.entries.find(params[:id])
		entry.destroy

		redirect_to project_entries_path(project.id)
	end
	
	private
	
	def entry_params
		params.require(:entry).permit(:hours, :minutes, :date, :comments)
	end

end