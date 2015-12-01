require_relative "../lib/insecure_test.rb"
require 'spec_helper'

describe "PasswordCheck"  do 
	let (:pwc) {PasswordChecker.new("", "")}
	context "create standard email" do
		it "validate email" do
			expect(pwc.valid_email?).to be false

		end

		it "validate email" do 
			pwc = PasswordChecker.new("cvv@sdsses", "")

			expect(pwc.valid_email?).to be false

		end
		it "validate email" do 
			pwc = PasswordChecker.new("cvv.sdsses", "")

			expect(pwc.valid_email?).to be false

		end
		it "validate email" do 
			pwc = PasswordChecker.new("cvv@sdss.es", "")

			expect(pwc.valid_email?).to be true

		end
	end
	context "create standard password" do
		it "validate password" do
			expect(pwc.valid_password?).to be true
	end

	it "validate password" do

		pwc = PasswordChecker.new(" ", "x1xX$x")
			expect(pwc.valid_password?).to be false
	end

	it "validate password" do

		pwc = PasswordChecker.new(" ", "xxxXxxx")
			expect(pwc.valid_password?).to be false
	end

	it "validate password" do

		pwc = PasswordChecker.new(" ", "xx$x1xXxx")
			expect(pwc.valid_password?).to be true
	end

	it "validate password" do
		pwc = PasswordChecker.new (" ", "xx$x1xXxxtest")

			expect(pwc.valid_password?).to be false
	end

	it "validate password" do

		pwc = PasswordChecker.new(" ", "xx$x1xxxx")
			expect(pwc.valid_password?).to be false
	end
end



