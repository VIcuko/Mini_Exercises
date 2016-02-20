require 'rails_helper'

RSpec.describe Company, type: :model do
  context "when saving a company" do
  	it "has a valid factory" do
  		expect(build(:company)).to be_valid
  	end

  	it 'is invalid when no name provided' do
  		new_company = build(:company,company_name: nil)
  		new_company.valid?
  		#Esta línea si hay algún error en las validaciones genera un nuevo atributo "errors[]" que guarda los errores que se puedan dar.
  		expect(new_company.errors[:company_name].any?).to eq(true)
  		#Esta línea nos valida que realmente se ha generado un error en la validación del campo company_name
  	end

  end


  pending "add some examples to (or delete) #{__FILE__}"
end
