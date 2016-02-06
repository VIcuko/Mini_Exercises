class Api::V1::TasksController < ApplicationController

	before_action: user_exists

	def index
		tasks = @user.tasks
		render json: tasks
	end

	def create
		task = @user.tasks.build(task_params)
		task.save
		render



		user = params[:id]
		task = Task.create(user_params)
		render json: user, status:201

	end


	def show
		tasks = @user.tasks.build(task_params)
		

		task.save
		render
	end

	def complete
		task = @user.tasks.build(task_params)
		task.save
		render

	end


	def completed


	end

private

	def task_params
		params.require(:tasks).permit(:name,:due_date)
	end

	def user_exists
		@user = User.find_by(:id params[:user_id])
		unless @user
			render json: {:error => "task not found"}, status: 400
			return
		end
	end


end
