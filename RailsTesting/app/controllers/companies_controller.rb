class CompaniesController < ApplicationController
	def show
		@company = Company.find_by(id: params[:id])
	end

	def index
		@company = Company.all
	end

end
