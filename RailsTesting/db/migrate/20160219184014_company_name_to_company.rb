class CompanyNameToCompany < ActiveRecord::Migration
  def change
  	add_column :companies, :company_name, :string
  end
end
