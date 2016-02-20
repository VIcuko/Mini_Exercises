require 'rails_helper'

RSpec.describe CompaniesController, type: :controller do
	context 'GET #show' do
		context 'the company exists' do
			before(:each) do
				@company = create(:company)
				get :show,{id: @company.id}
			end
			it 'responds successfully with an HTTP 200 status code' do
				expect(response).to be_success
				expect(response).to have_http_status(200)
			end

			it 'renders the show template' do
				expect(response).to render_template("show")
			end

			it 'gets the right company' do
				expect(assigns(:company)).to eq(@company)
			end
		end
	end
	context 'GET #index' do
		context 'the company exists' do
			before(:each) do
				@company = create(:company)
				get :index
			end
			it 'responds successfully with an HTTP 200 status code' do
				expect(response).to be_success
				expect(response).to have_http_status(200)
			end

			it 'renders the show template' do
				expect(response).to render_template("index")
			end

			it 'gets the right company' do
				expect(assigns(:company)).not_to eq("")
			end
		end
	end

end
